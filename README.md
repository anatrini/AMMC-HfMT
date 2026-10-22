# Artificial Models for Multimodal Creativity

Hochschule für Musik und Theater Hamburg · Academic year 2026/27
Prof. Dr. Alessandro Anatrini

## The course

Artificial Models for Multimodal Creativity is a one-year course on machine learning in artistic practice. It examines how models learn from data, what they can and cannot represent, and how they can become part of instruments, compositions and installations. The course combines a theoretical introduction to the main families of models with practical work, in which every topic is applied in a working patch.

The course does not require prior knowledge of programming or mathematics beyond what is needed to work in Max or Pd. Models that exist only in Python are provided as ready-made scripts, which run in the background and communicate with the patch over OSC. The aim is not to train students as engineers, but to give them a precise understanding of these models and the means to use them, question them and adapt them in their own work.

Sofian Audry's *Art in the Age of Machine Learning* (MIT Press, 2021) runs through the whole year. Its distinction between data, model and training structures the topics, and its account of artists working with machine learning provides the critical background for the discussions.

## Winter semester: sound, symbols, sensors

The winter semester deals with sound and music. It starts from the body: a model is trained with a few examples recorded in class, the movement of a phone or the shape of a hand, and becomes an instrument within the first lesson. From there the course moves to models that recognise poses and gestures in a camera image, to models that generate sequences of notes, and finally to neural networks that analyse and synthesise sound in real time. Each step introduces the concepts needed to understand the next one: features and training, convolutional networks, sequence models, latent spaces.

The semester is organised in five blocks:

1. **Learning from examples**: regression, classification and neural networks, through an instrument trained with the sensors of a phone.
2. **Bodies as data**: computer vision, hand and body tracking, maps of gestures and the recognition of gestures in time.
3. **Learning sequences**: Markov chains, recurrent networks and transformers for symbolic music.
4. **Latent spaces**: autoencoders and RAVE, neural synthesis of sound controlled by sensors.
5. **Studio and critique**: data, authorship and copyright in generative music; presentation of the work.

The detailed programme is in the **[syllabus](syllabus.md)**.

## Summer semester: images and space

The summer semester applies the same methods to images and three-dimensional space, in TouchDesigner and ComfyUI. The sensors and the communication over OSC introduced in winter remain the same, so that a gesture or a sound can control images as well as music, and the work of both semesters can be combined in a single project.

## Format and assessment

Each semester is organised in blocks of half a day or a full day, about one per month. Roughly a third of the time is theory; the rest is spent on practical work, listening and discussion. Students complete the exercises of each block. A project developed over the year is welcome but not required.

## Software

The course is based on [Max 9](https://cycling74.com/downloads), or alternatively [Pd](https://puredata.info) and [plugdata](https://plugdata.org), together with [TouchDesigner](https://derivative.ca/download) and [ComfyUI](https://www.comfy.org/download).

## Repository

| Folder | Contents |
|---|---|
| [`slideshow/`](slideshow/) | slides of the lessons (PDF) |
| `max/` | patches for the exercises |
| [`resources/`](resources/) | papers and reading |

The repository is updated after each block.

## Related repositories

| Repository | Description |
|---|---|
| [spawn](https://github.com/anatrini/spawn) | Max and Pd object that starts a Python script from a patch; used from block 2 |
| [performance_rnn_torch](https://github.com/anatrini/performance_rnn_torch) | PyTorch implementation of Performance RNN, a model that generates expressive piano performances; used in block 3 |
