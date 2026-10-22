# Syllabus

**Artificial Models for Multimodal Creativity**
Hochschule für Musik und Theater Hamburg · Winter semester 2026/27 · Sound, symbols, sensors
Prof. Dr. Alessandro Anatrini

## Contents

1. [Approach](#approach)
2. [Format](#format)
3. [Overview of the five blocks](#overview-of-the-five-blocks)
4. [Block 1 · Learning from examples](#block-1--learning-from-examples)
5. [Block 2 · Bodies as data](#block-2--bodies-as-data)
6. [Block 3 · Learning sequences](#block-3--learning-sequences)
7. [Block 4 · Latent spaces](#block-4--latent-spaces)
8. [Block 5 · Studio and critique](#block-5--studio-and-critique)
9. [Software](#software)
10. [Reading](#reading)

## Approach

- **Sensors before symbols.** The course starts with interactive machine learning (Fiebrink): a model is trained in Max on a few examples recorded live, in a few seconds. Features, targets, regression, classification and overfitting become concrete at once, and the first lesson already ends with a working instrument.
- **Every block ends in Max.** Pd and plugdata are used in parallel where the externals exist; otherwise through Wekinator or OSC.
- **Python as a bridge, not as a subject.** Students do not write PyTorch. They receive ready-made scripts that run a model and talk to Max over OSC. Python code is shown to explain what happens inside a model, not written together.
- **Audry as a guide.** The division *training / model / data* of Audry's book organises the course: blocks 1–2 (data and training, with your own body), block 3 (models for sequences), block 4 (latent spaces), block 5 (data as a critical question).
- **Train first, then generate.** First you train a model with your own body, then you use models that generate sequences, then models that generate sound. Block 4 closes the circle: the sensor of block 1 controls the latent space of RAVE.

## Format

Five blocks of half a day or a whole day. Roughly **30% theory, 60% lab, 10% listening and discussion**. The lab is never left for the end.

## Overview of the five blocks

| # | Block | Concepts | In Max at the end of the block |
|---|---|---|---|
| 1 | Learning from examples | four myths (Audry); AI, machine learning, deep learning; tensors; regression and classification; multilayer perceptron; loss; overfitting; interactive machine learning | phone → neural network → synthesiser |
| 2 | Bodies as data | features from the body; scaling; convolutional networks (inside MediaPipe and YOLO); dimensionality reduction; gestures in time | webcam and hands → classifier and gesture follower → sound |
| 3 | Learning sequences | MIDI as data; Markov chains; RNN and LSTM; autoregression; transformers; temperature and sampling | a Markov chain trained on your own MIDI; Performance-RNN over OSC, controlled by a sensor |
| 4 | Latent spaces | autoencoders, VAE, RAVE; GAN and diffusion as an overview | `nn~` with pretrained RAVE models; sensor → latent space |
| 5 | Studio and critique | data, authorship, labour, licences; Suno, Udio and the 2024 lawsuits | presentation of the exercises or of the project |

## Block 1 · Learning from examples

**Topics**

- Four myths about AI (Audry 2021): AI, machine learning and deep learning are the same thing; machine learning is new; the machine learns by itself; superintelligence is close.
- A short history: Turing, cybernetics, the perceptron, adaptive systems in music, AlexNet, the Transformer, from language models to agents.
- Learning a mapping: gesture → sound in digital instruments; tensors; regression and classification.
- How a network learns: one weight computed by hand, learning rate, scaling of the inputs, backpropagation, hidden layers, validation, overfitting.
- Interactive machine learning: Wekinator, Laetitia Sonami. FluCoMa in Max.

**Exercise 1 · Tilt and timbre.** The tilt of a phone, sent over OSC, controls an FM synthesiser through a neural network (`fluid.mlpregressor~`). You record a few positions of the phone with a sound for each, train, and play. In Pd and plugdata: FluCoMa for Pd, or Wekinator as a separate application.

**You need:** Max 9 with FluCoMa (Package Manager), or Pd / plugdata; a phone with an OSC app (ZIG SIM, GyrOSC, Sensors2OSC or TouchOSC). Phone and computer on the same network.

**Reading:** Audry, introduction.

## Block 2 · Bodies as data

**Topics**

- Cameras in music before deep learning: Rokeby's *Very Nervous System*, frame differencing, the Kinect.
- Convolutional networks: filters, feature maps, pooling, what the layers learn.
- What MediaPipe and YOLO compute: 21 points of a hand, 33 of a body, boxes and classes of objects and people. The datasets behind them.
- Features from the points: coordinates relative to the wrist, scaling, distances, velocity.
- Classification with nearest neighbours.
- Dimensionality reduction: 63 numbers → 2 with PCA and UMAP, a map of hand shapes. It prepares the latent spaces of block 4.
- Gestures in time: dynamic time warping, gesture following with MuBu (IRCAM). Sequential data lead to block 3.

**Exercise 2 · A hand in front of the camera.** A Python script (MediaPipe) tracks a hand in the webcam image and sends its 21 points to Max over OSC. Three independent parts:

- A. hand poses trigger sounds (`fluid.knnclassifier~`);
- B. a map of hand shapes (`fluid.umap~`);
- C. a gesture followed while it happens (`mubu.hhmm`, Max only).

Alternative to Python: the MediaPipe plugin for TouchDesigner.

**You need:** a webcam; [uv](https://docs.astral.sh/uv/) to install the Python environment of the script (instructions in the exercise folder); MuBu for Max (Package Manager) for part C.

**Reading:** Audry, part on training.

## Block 3 · Learning sequences

From mapping to **generating**: predicting the next event.

**Topics**

- MIDI as data: pitch, onset, duration, velocity; piano roll and sequence of events.
- Markov chains: transition probabilities, order 1, 2 and n.
- RNN, LSTM and GRU: unfolding in time, shared parameters, autoregression.
- Sampling: temperature and top-k; why the same network sounds dull or chaotic.
- Transformers: attention over the whole sequence; recent open symbolic models, such as the Anticipatory Music Transformer (2023).

**Lab**

1. A Markov chain in Max with `anal` and `prob`, trained on a MIDI file; order 1 and order 2 compared. In plugdata: `cyclone/anal` and `cyclone/prob`.
2. The dataset as a choice: everyone trains a chain on different material.
3. Performance-RNN over OSC: a Python script runs a trained model and receives temperature, note density and pitch profile from Max; it sends notes back.
4. The phone or the hand of the earlier blocks controls temperature and density of the generation.

**Reading:** Audry, part on the model.

## Block 4 · Latent spaces

From symbols to sound: a model that compresses sound into a few numbers and rebuilds it.

**Topics**

- Autoencoders and variational autoencoders.
- The latent space: compression and continuity; the link with UMAP in block 2.
- RAVE (Caillon & Esling 2021): real time, on a laptop processor, timbre transfer.
- A map of generative models: GAN, diffusion, text-to-music, as an overview.
- What is hard in generating audio: dimensionality, phase, coherence in time.

**Lab**

1. `nn~` in Max with pretrained RAVE models: timbre transfer from the microphone or a file.
2. Encoder and decoder separately: change the latent dimensions (offset, scale, noise) between them.
3. Sensor → latent space: the neural network of Exercise 1 maps poses of the phone or the hand to latent vectors. This exercise ties the semester together.

**You need:** `nn~` (Max or Pd) and the pretrained models indicated in class.

## Block 5 · Studio and critique

- Reading and discussion: Audry, part on data; distributed authorship.
- Cases: Holly+ (a voice as a shared model); Suno, Udio and the 2024 lawsuits of the major labels, with the agreements that followed; music datasets (MAESTRO, Lakh) and their licences.
- Presentation of the exercises (one minute of recording each) or of the year project. For those who continue in the summer semester: the same sensors, over OSC, control images in TouchDesigner and ComfyUI.

## Software

| Tool | Runs in | Used for | Blocks |
|---|---|---|---|
| [FluCoMa](https://www.flucoma.org) | Max, Pd, SuperCollider | neural networks, nearest neighbours, PCA, UMAP, datasets, audio descriptors | 1, 2 |
| [MuBu](https://forum.ircam.fr/projects/detail/mubu/) | Max only | gesture following and recognition | 2 |
| [Wekinator](http://www.wekinator.org) | standalone app, OSC | interactive machine learning without externals | 1, 2 |
| [MediaPipe](https://ai.google.dev/edge/mediapipe) | Python or TouchDesigner → OSC | hands, bodies, faces | 2 |
| [YOLO (Ultralytics)](https://docs.ultralytics.com) | Python or TouchDesigner → OSC | people and objects | 2 |
| `anal`, `prob` | Max; `cyclone` in Pd and plugdata | Markov chains | 3 |
| [nn~](https://github.com/acids-ircam/nn_tilde) | Max, Pd | neural audio models in real time (RAVE) | 4 |
| [uv](https://docs.astral.sh/uv/) | terminal | the Python environment of each script | 2–4 |
| [spawn](https://github.com/anatrini/spawn) | Max, Pd, plugdata | starting a Python script from a patch | 2–4 |

## Reading

- Sofian Audry, *Art in the Age of Machine Learning*, MIT Press, 2021.
- Papers in [`resources/`](resources/):
  - Caillon & Esling, *RAVE: a variational autoencoder for fast and high-quality neural audio synthesis*, 2021;
  - Peeters, *A large set of audio features for sound description*, IRCAM report, 2004;
  - Carr & Zukowski, *Generating albums with SampleRNN to imitate metal, rock, and punk bands*, 2018;
  - Zhu, Baca & Rekabdar, *A survey of AI music generation tools and models*.
