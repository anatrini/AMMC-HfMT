# Artificial Models for Multimodal Creativity

Course materials · Hochschule für Musik und Theater Hamburg · Winter semester 2026/27
Prof. Dr. Alessandro Anatrini

## What this course is about

You will teach computers to react to you, and use them to make music.

First you show a program a few examples, such as a tilt of your phone or the shape of your hand, each with a sound, and the program learns to connect them. You play it like an instrument. Then you use programs that write melodies note by note, and programs that turn one sound into another, for example your voice into a violin.

Along the way you see how these programs work inside, in plain terms, and you discuss the questions they raise: whose data they learn from, who is the author of the result, and what the law says.

Most of the time is spent in the lab, building small instruments in Max (or Pd / plugdata). You do not need to know programming beyond patching in Max or Pd: the few Python scripts are ready to use.

The full programme, block by block, is in the **[syllabus](syllabus.md)**.

## What you need

- A laptop with [Max 9](https://cycling74.com/downloads) or [plugdata](https://plugdata.org) / [Pd](https://puredata.info)
- A smartphone with an OSC app (for example ZIG SIM, GyrOSC or Sensors2OSC)
- A webcam (the built-in one is fine) and headphones
- Further installations are explained in each exercise

## What is in this repository

| Folder | Contents |
|---|---|
| [`slideshow/`](slideshow/) | slides of the lessons (PDF) |
| `max/` | patches of the exercises (from block 1 on) |
| [`resources/`](resources/) | papers to read |

Materials are added block by block during the semester.

## Related repositories

| Repository | What it is |
|---|---|
| [spawn](https://github.com/anatrini/spawn) | a Max and Pd object that starts a Python script from a patch; used from block 2 |
| [performance_rnn_torch](https://github.com/anatrini/performance_rnn_torch) | a model that plays piano music note by note, with dynamics and timing; used in block 3 |
