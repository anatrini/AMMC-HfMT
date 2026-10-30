// What Performance RNN plays, measured as its controls are measured in the
// training data: the time each pitch class sounds (last 5 s) and the note
// onsets per second (last 3 s). Used by ex3b-prnn.
//
// Messages
//   note_on p v, note_off p   the notes received from prnn serve
//   tick                      every 100 ms (metro 100): outputs the measures
//   asked w1 ... w12          the histogram sent to the server, for comparison
//   clear
// Outlets: played pitch classes, notes per second, asked pitch classes.
// Both histograms are scaled so that their strongest pitch class is 1.

inlets = 1;
outlets = 3;

const TICK = 0.1; // seconds between two ticks
const HISTOGRAM_TICKS = 50; // 5 s
const DENSITY_TICKS = 30; // 3 s

let held = new Array(128).fill(0); // note-ons not yet released, per pitch
let onsets = 0;
let frames = []; // per tick: [seconds per pitch class, onsets]

function note_on(p, v) {
    if (v > 0) {
        held[p]++;
        onsets++;
    } else {
        note_off(p);
    }
}

function note_off(p) {
    if (held[p] > 0) held[p]--;
}

function tick() {
    const seconds = new Array(12).fill(0);
    for (let p = 0; p < 128; p++) if (held[p] > 0) seconds[p % 12] += TICK;
    frames.push([seconds, onsets]);
    onsets = 0;
    if (frames.length > HISTOGRAM_TICKS) frames.shift();

    const total = new Array(12).fill(0);
    for (const [s] of frames) for (let i = 0; i < 12; i++) total[i] += s[i];
    let count = 0;
    for (const [, o] of frames.slice(-DENSITY_TICKS)) count += o;

    outlet(1, count / (DENSITY_TICKS * TICK));
    outlet(0, scaled(total));
}

function asked(...w) {
    outlet(2, scaled(w));
}

function clear() {
    held = new Array(128).fill(0);
    onsets = 0;
    frames = [];
}

function scaled(w) {
    const top = Math.max(...w);
    return top > 0 ? w.map((v) => v / top) : w;
}
