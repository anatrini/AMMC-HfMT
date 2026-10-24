# Lesson 2 · Hand poses

`261023_handPoses.maxpat` recognises hand poses seen by the webcam and plays a sound for each of them. The hand is tracked by a Python script, `bridge/body2osc.py`, which uses MediaPipe and sends the 21 points of one hand to Max over OSC (port 9001). The patch starts and stops the script itself, with the `spawn` object.

You need:

- Max 9, with FluCoMa (from the Max Package Manager);
- the `spawn` object (step 1);
- uv, which installs Python and the libraries of the script (steps 2 and 3).

Steps 1–4 are done once per computer.

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

## 4. Change the command in the patch

The message box connected to `spawn` contains the command that starts the script. It contains paths that exist only on the teacher's computer. Unlock the patch and replace the text of the message box with:

```
bridge/.venv/bin/python bridge/body2osc.py
```

`spawn` runs commands from the folder of the patch, so this short path works on every computer, as long as:

- the patch is saved (an unsaved patch runs commands from your home folder);
- the `bridge` folder stays next to the patch.

The patch also uses `ex2.hand-features.maxpat`, a separate patch that turns the 21 points into hand-shape features. Keep it in the same folder as `261023_handPoses.maxpat`, otherwise Max cannot find it.

Save the patch.

## Using the patch

1. Open `261023_handPoses.maxpat` and click the message box: the camera window opens.
2. The first time, macOS asks whether Max may use the camera: click Allow. If the window does not open, enable Max in System Settings → Privacy & Security → Camera, then click the message box again.
3. Follow the numbered sections of the patch.
4. `stop`, or closing the patch, stops the script.

The lines printed by the script appear in the Max console. Only one program at a time can receive on port 9001: close other patches that listen on it.

## Problems

- **`spawn` cannot be found, or "developer cannot be verified"**: check step 1, especially the `xattr` command, and restart Max.
- **`No such file or directory`**: the patch is not saved, `bridge` is not next to it, or step 3 was not done (`bridge/.venv` is missing).
- **`not authorized to capture video`**: Max has no permission to use the camera (see point 2 above).
- **The camera window opens but Max receives nothing**: another program is using port 9001.
