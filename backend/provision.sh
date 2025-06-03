#!/bin/sh

set -eu

conda run -n comfy jupyter lab --LabApp.token="" --allow-root --ip "0.0.0.0" -y 2>&1 &

cd SageAttention
conda run -n comfy --live-stream python "setup.py" install

cd ../ComfyUI
conda run -n comfy --live-stream python "main.py" --listen
