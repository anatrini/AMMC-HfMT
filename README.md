# Artificial Models for Multimodal Creativity

Course materials · Hochschule für Musik und Theater Hamburg · Winter semester 2026/27
Prof. Dr. Alessandro Anatrini

## About the course

In this course you build small musical instruments that learn from you.

You start by showing the computer a few examples: a tilt of your phone, the shape of your hand, each paired with a sound. The computer learns how they go together, and you can then play it. Later you work with programs that write melodies note by note, and with programs that change one sound into another, for example your voice into a violin.

We also look at how these programs work, without heavy maths, and talk about the questions they raise: where their data come from, who the author of the result is, and what the law says.

Most of the time is spent making things in Max, or in Pd / plugdata. If you can patch, you have what you need. The few Python scripts are ready to use; you will not have to write code.

The full programme is in the **[syllabus](syllabus.md)**.

## What you need

- A laptop with [Max 9](https://cycling74.com/downloads), or [plugdata](https://plugdata.org) / [Pd](https://puredata.info)
- A smartphone with an OSC app, for example ZIG SIM, GyrOSC or Sensors2OSC
- A webcam (the built-in one is fine) and headphones

Anything else is explained in the exercise where it is needed.

## In this repository

| Folder | Contents |
|---|---|
| [`slideshow/`](slideshow/) | slides of the lessons (PDF) |
| `max/` | patches for the exercises |
| [`resources/`](resources/) | papers to read |

New material is added after each block.

## Related repositories

| Repository | What it is |
|---|---|
| [spawn](https://github.com/anatrini/spawn) | a Max and Pd object that starts a Python script from a patch; used from block 2 on |
| [performance_rnn_torch](https://github.com/anatrini/performance_rnn_torch) | a model that plays piano music note by note, with dynamics and timing; used in block 3 |
