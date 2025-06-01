#!/bin/sh

set -eu

cd SageAttention
conda run -n comfy --live-stream python "setup.py" install

cd ../ComfyUI
conda run -n comfy --live-stream python "main.py" --listen
