# Lesson 2 · Bodies as data

Three patches, one for each part of Exercise 2:

| Patch | What it does |
|---|---|
| `A-261023_handPoses.maxpat` | recognises hand poses seen by the webcam and plays a sound for each of them (`fluid.knnclassifier~`) |
| `B-261023-hand-map.maxpat` | draws a map of hand shapes (`fluid.umap~`) and plays the point of the map where your hand is |
| `C-261023-gesture-follower.maxpat` | follows a gesture of the fingertip while it happens, and plays it as a sound (`mubu.hhmm`) |

In all three, the hand is tracked by a Python script, `bridge/body2osc.py`, which uses MediaPipe and sends the 21 points of one hand to Max over OSC (port 9001). Each patch starts and stops the script itself, with the `spawn` object.

You need:

- Max 9, with FluCoMa (from the Max Package Manager);
- for patch C, MuBu (from the Max Package Manager);
- the `spawn` object (step 1);
- uv, which installs Python and the libraries of the script (steps 2 and 3).

Steps 1–3 are done once per computer. Step 4 explains the command that starts the script, and how to change it if your Python environment is somewhere else.

## 1. Install the spawn object

1. Download `spawn-<version>-max-macos.zip` from https://github.com/anatrini/spawn/releases/latest
2. Unzip it and move the `spawn` folder into `~/Documents/Max 9/Packages/`.
3. macOS blocks objects that are not signed by a registered developer. Unblock it once, in the Terminal:

   ```
   xattr -cr ~/Documents/Max\ 9/Packages/spawn
   ```

4. Restart Max.

More information: https://github.com/anatrini/spawn

## 2. Install uv

uv is a program that creates a separate Python environment for a project and installs its libraries there, without changing anything else on the computer.

Open the Terminal (Applications → Utilities → Terminal) and run:

```
curl -LsSf https://astral.sh/uv/install.sh | sh
```

Close the Terminal and open it again, then check that it works:

```
uv --version
```

## 3. Install the libraries of the script

In the Terminal, go to the `bridge` folder. Type `cd ` (with a space), drag the `bridge` folder from the Finder into the Terminal window, and press Enter. Then run:

```
uv venv --managed-python --python 3.12
uv pip install -r requirements.txt
```

The first line creates the folder `bridge/.venv` with its own Python 3.12. The second installs MediaPipe and python-osc into it (about 340 MB). If something goes wrong, delete the `.venv` folder and run both lines again.

To test the script on its own, from the `bridge` folder:

```
.venv/bin/python body2osc.py
```

A window shows the camera image with the points of the hand. Press `q` in that window to stop. The first time, the script downloads the MediaPipe model (`hand_landmarker.task`, about 8 MB) into `bridge/`.

## 4. Check the command in the patch

In each of the three patches, the message box connected to `spawn` contains the command that starts the script:

```
bridge/.venv/bin/python bridge/body2osc.py
```

It has two parts, separated by a space:

1. `bridge/.venv/bin/python` is the Python of the environment created in step 3. The script must run with this Python, because only this one has MediaPipe and python-osc installed.
2. `bridge/body2osc.py` is the script.

`spawn` runs commands from the folder of the patch, so these short paths are relative to the folder that contains the patches. **If you followed step 3 exactly, you do not need to change anything.** The command works as long as:

- the patch is saved (an unsaved patch runs commands from your home folder);
- the `bridge` folder stays next to the patches;
- the environment is `bridge/.venv`, created in step 3.

**If your environment is somewhere else**, for example because you created it in another folder or you use an environment you already had, replace the first part with the full path of its Python. To find it:

1. In the Finder, open the environment folder, then its `bin` folder.
2. Drag the file `python` into a Terminal window: the Terminal shows its full path, for example `/Users/anna/envs/hands/bin/python`.
3. Unlock each patch and write that path in its message box, in place of `bridge/.venv/bin/python`. Leave the second part as it is:

   ```
   /Users/anna/envs/hands/bin/python bridge/body2osc.py
   ```

4. If the path contains spaces, put it in quotes:

   ```
   "/Users/anna/My Envs/hands/bin/python" bridge/body2osc.py
   ```

5. Save the patches.

The environment must have Python 3.12 and the libraries in `bridge/requirements.txt` installed. Do not use the Python of the system (`python3`): it does not have these libraries.

Patches A and B also use `ex2.hand-features.maxpat`, a separate patch that turns the 21 points into hand-shape features. Keep it in the same folder as the patches, otherwise Max cannot find it.

## Using the patches

Open one patch at a time: only one program can receive on port 9001.

1. Open the patch and click the message box connected to `spawn`: the camera window opens.
2. The first time, macOS asks whether Max may use the camera: click Allow. If the window does not open, enable Max in System Settings → Privacy & Security → Camera, then click the message box again.
3. Switch the audio on, then follow the numbered sections of the patch, as below.
4. `stop`, or closing the patch, stops the script.

The lines printed by the script appear in the Max console.

### A · Hand poses

1. For each label, including `rest` (relaxed hand, transitions): choose it, hold the pose and click `add example` 5–10 times, moving the hand a little between clicks.
2. Click `train`. Training only stores the examples: it takes no time.
3. Switch on `play`: each pose recognised triggers its sound, and `rest` stops it. If a pose is not recognised, add more examples of it and click `train` again.

### B · A map of hand shapes

1. Switch on `record` and move the hand slowly through many shapes for about 30 seconds (one example every 100 ms), then switch it off.
2. Click `map`. UMAP reduces the 63 numbers of each hand shape to 2 and draws the map. Each `map` gives a differently oriented map.
3. Switch on `play` and move the hand: the red point shows where the current hand shape falls on the map, and its position plays the FM oscillator of Exercise 1 (x: frequency, y: index).

The recorded shapes are kept only while the patch is open: after reopening it, record and map again.

### C · Following a gesture

Only the index fingertip is used: its position x, y in the image.

1. Record three gestures, one per example. For each one:
   1. click its number (`1`, `2` or `3`);
   2. bring the hand to the starting point of the gesture, inside the camera image;
   3. switch on `record`;
   4. draw the gesture in the air (2–3 seconds);
   5. **switch off `record`** before choosing the next example.

   Check the tabs 1, 2 and 3 of the container below: each must hold one short curve. To record an example again, choose it and repeat the steps: the new recording replaces the old one.
2. Click `train`, then switch on `follow`.
3. Perform the gestures. The likeliest gesture chooses one of three sounds, and how far through the gesture you are sets the playback position: slowly, quickly, halfway, backwards.

The model sees only where the fingertip is in the image. Choose gestures that are easy to tell apart: in different parts of the image, with different shapes and starting points. Two gestures that cover the same area, the same path in opposite directions, or a gesture that begins like another, are easily confused. Perform them at the size and in the place where you recorded them.

## Problems

- **`spawn` cannot be found, or "developer cannot be verified"**: check step 1, especially the `xattr` command, and restart Max.
- **`No such file or directory`**: the patch is not saved, `bridge` is not next to it, or the Python in the command does not exist: step 3 was not done (`bridge/.venv` is missing), or the path of your own environment is wrong (see step 4).
- **`ModuleNotFoundError: No module named …`**: the command uses a Python without the libraries of the script. Use the Python of the environment from step 3 (see step 4).
- **`not authorized to capture video`**: Max has no permission to use the camera (see point 2 above).
- **The camera window opens but Max receives nothing**: another program is using port 9001, for example another exercise patch.
- **`mubu.hhmm` or `imubu` cannot be found** (patch C): install MuBu from the Max Package Manager and restart Max.
