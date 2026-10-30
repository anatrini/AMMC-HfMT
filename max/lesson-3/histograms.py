"""Pitch-class histograms of MIDI files, for C-261030-harmony-map.maxpat.

One histogram every 5 seconds of each file: the share of time each pitch
class (C to B) sounds in the next 5 seconds, with the sustain pedal applied.
These are the histograms Performance RNN is trained with, computed by its own
code, so a histogram of the map means for the model what it meant in the data.
Windows in which nothing sounds are left out.

The histograms are sent over OSC to Max (127.0.0.1, port 9020):
    /clear                  before the first one
    /histogram i w1 ... w12 one per window, numbered from 0
    /done n                 the number sent
With --out they are written instead to a text file for coll.

Run it with the Python of performance_rnn_torch, e.g. from Max with spawn:
    ../../../performance_rnn_torch/.venv/bin/python histograms.py midi
    ../../../performance_rnn_torch/.venv/bin/python histograms.py --maestro ../../../performance_rnn_torch/data/maestro-v3.0.0 --composer "Frédéric Chopin"
Folders are searched recursively for .mid and .midi files.
"""

import argparse
import csv
import time
from pathlib import Path

import numpy as np
from performance_rnn_torch.core.sequence import ControlSeq, EventSeq, NoteSeq
from pythonosc.udp_client import SimpleUDPClient

WINDOW_STEPS = 500  # 5 s in steps of 10 ms


def histograms(path):
    note_seq = NoteSeq.from_midi_file(path)
    if not note_seq.notes:
        return np.zeros((0, 12))
    note_seq.adjust_time(-note_seq.notes[0].start)
    event_seq = EventSeq.from_note_seq(note_seq)
    control_seq = ControlSeq.from_event_seq(event_seq)
    before, _ = event_seq.steps()
    starts = np.arange(0, before[-1], WINDOW_STEPS)
    rows = control_seq.histogram[np.searchsorted(before, starts)]
    return rows[np.ptp(rows, axis=1) > 1e-6]  # all equal: nothing sounds


def midi_files(args):
    files = []
    for source in map(Path, args.sources):
        if source.is_file():
            files.append(source)
        else:
            files += sorted(p for p in source.rglob('*') if p.suffix.lower() in ('.mid', '.midi'))
    if args.maestro:
        root = Path(args.maestro).expanduser()
        for row in csv.DictReader(open(root / 'maestro-v3.0.0.csv', encoding='utf-8')):
            if row['canonical_composer'] in args.composer and (root / row['midi_filename']).exists():
                files.append(root / row['midi_filename'])
    return files


def main():
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument('sources', nargs='*', help='MIDI files or folders')
    parser.add_argument('--maestro', help='folder maestro-v3.0.0, to choose files by composer')
    parser.add_argument('--composer', action='append', default=[], help='with --maestro: exact name; can be repeated')
    parser.add_argument('--port', type=int, default=9020, help='OSC port of Max (default: 9020)')
    parser.add_argument('--out', help='write a text file for coll instead of sending')
    args = parser.parse_args()

    files = midi_files(args)
    print(f'{len(files)} MIDI files')
    rows = []
    for k, path in enumerate(files, 1):
        try:
            rows.append(histograms(path))
        except Exception as error:  # a damaged file should not stop the others
            print(f'{path.name}: {error}')
        if k % 20 == 0:
            print(f'{k} of {len(files)} files read')
    rows = np.concatenate(rows) if rows else np.zeros((0, 12))

    if args.out:
        with open(args.out, 'w') as f:
            for i, row in enumerate(rows):
                f.write(f'{i}, ' + ' '.join(f'{w:.4f}' for w in row) + ';\n')
        print(f'{len(rows)} histograms written to {args.out}')
        return

    client = SimpleUDPClient('127.0.0.1', args.port)
    client.send_message('/clear', 1)
    for i, row in enumerate(rows):
        client.send_message('/histogram', [i] + [round(float(w), 4) for w in row])
        time.sleep(0.0005)  # UDP has no flow control: do not flood Max
    client.send_message('/done', len(rows))
    print(f'{len(rows)} histograms sent to port {args.port}')


if __name__ == '__main__':
    main()
