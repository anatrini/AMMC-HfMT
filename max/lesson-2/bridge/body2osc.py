"""Webcam -> MediaPipe -> OSC, for Exercise 2.

Tracks one hand (default) or one body and sends its landmarks to Max.

    .venv/bin/python body2osc.py               hand, camera 0, port 9001
    .venv/bin/python body2osc.py --pose        body instead of hand
    .venv/bin/python body2osc.py --camera 1    another camera

OSC messages (to 127.0.0.1, port 9001 unless --port is given):

    /hand/raw       63 floats: x y z of the 21 hand landmarks, in MediaPipe order
    /hand/present   1 when a hand is tracked, 0 when it is lost (sent on change)
    /pose/raw       99 floats: x y z of the 33 body landmarks (with --pose)
    /pose/present   as /hand/present
    /camera/aspect  width / height of the camera image (once per second)

x and y are divided by the image width and height (0..1, origin top left);
z is depth relative to the wrist (hand) or to the hip midpoint (body).
Press q in the preview window, or ctrl-c in the terminal, to stop.
"""
import argparse
import time
import urllib.request
from pathlib import Path

import cv2
import mediapipe as mp
from pythonosc.udp_client import SimpleUDPClient

MODELS = {
    "hand": ("hand_landmarker.task",
             "https://storage.googleapis.com/mediapipe-models/hand_landmarker/"
             "hand_landmarker/float16/latest/hand_landmarker.task"),
    "pose": ("pose_landmarker_full.task",
             "https://storage.googleapis.com/mediapipe-models/pose_landmarker/"
             "pose_landmarker_full/float16/latest/pose_landmarker_full.task"),
}
# Lines drawn in the preview window.
HAND_LINES = [(0, 1), (1, 2), (2, 3), (3, 4), (0, 5), (5, 6), (6, 7), (7, 8),
              (5, 9), (9, 10), (10, 11), (11, 12), (9, 13), (13, 14), (14, 15),
              (15, 16), (13, 17), (17, 18), (18, 19), (19, 20), (0, 17)]
POSE_LINES = [(11, 12), (11, 13), (13, 15), (12, 14), (14, 16), (11, 23),
              (12, 24), (23, 24), (23, 25), (25, 27), (24, 26), (26, 28)]


def model_path(task):
    name, url = MODELS[task]
    path = Path(__file__).resolve().parent / name
    if not path.exists():
        print(f"downloading {name} ...")
        urllib.request.urlretrieve(url, path)
    return str(path)


def make_tracker(task):
    vision = mp.tasks.vision
    base = mp.tasks.BaseOptions(model_asset_path=model_path(task))
    if task == "hand":
        options = vision.HandLandmarkerOptions(
            base_options=base, running_mode=vision.RunningMode.VIDEO, num_hands=1)
        return vision.HandLandmarker.create_from_options(options)
    options = vision.PoseLandmarkerOptions(
        base_options=base, running_mode=vision.RunningMode.VIDEO, num_poses=1)
    return vision.PoseLandmarker.create_from_options(options)


def landmarks_of(task, result):
    """The landmarks of the first hand or body, or None."""
    points = result.hand_landmarks if task == "hand" else result.pose_landmarks
    return points[0] if points else None


def main():
    parser = argparse.ArgumentParser(description=__doc__,
                                     formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument("--pose", action="store_true", help="track the body, not a hand")
    parser.add_argument("--camera", type=int, default=0, help="camera index (default 0)")
    parser.add_argument("--host", default="127.0.0.1")
    parser.add_argument("--port", type=int, default=9001)
    parser.add_argument("--width", type=int, default=1280)
    parser.add_argument("--height", type=int, default=720)
    args = parser.parse_args()

    task = "pose" if args.pose else "hand"
    lines = POSE_LINES if args.pose else HAND_LINES
    osc = SimpleUDPClient(args.host, args.port)
    tracker = make_tracker(task)

    cam = cv2.VideoCapture(args.camera)
    cam.set(cv2.CAP_PROP_FRAME_WIDTH, args.width)
    cam.set(cv2.CAP_PROP_FRAME_HEIGHT, args.height)
    if not cam.isOpened():
        raise SystemExit(f"camera {args.camera} cannot be opened")

    present, last_aspect, start = None, 0.0, time.monotonic()
    print(f"sending /{task}/raw to {args.host}:{args.port}; press q in the window to stop")
    try:
        while True:
            ok, frame = cam.read()
            if not ok:
                break
            h, w = frame.shape[:2]
            now = time.monotonic()
            if now - last_aspect > 1.0:
                osc.send_message("/camera/aspect", w / h)
                last_aspect = now

            rgb = cv2.cvtColor(frame, cv2.COLOR_BGR2RGB)
            image = mp.Image(image_format=mp.ImageFormat.SRGB, data=rgb)
            result = tracker.detect_for_video(image, int((now - start) * 1000))
            points = landmarks_of(task, result)

            if (points is not None) != present:
                present = points is not None
                osc.send_message(f"/{task}/present", int(present))
            if points is not None:
                osc.send_message(f"/{task}/raw",
                                 [float(v) for p in points for v in (p.x, p.y, p.z)])
                xy = [(int(p.x * w), int(p.y * h)) for p in points]
                for a, b in lines:
                    cv2.line(frame, xy[a], xy[b], (200, 200, 200), 2)
                for x, y in xy:
                    cv2.circle(frame, (x, y), 4, (17, 116, 90), -1)

            cv2.imshow(f"body2osc ({task})", cv2.flip(frame, 1))  # mirrored for the performer
            if cv2.waitKey(1) & 0xFF == ord("q"):
                break
    except KeyboardInterrupt:
        pass
    finally:
        cam.release()
        cv2.destroyAllWindows()
        tracker.close()


if __name__ == "__main__":
    main()
