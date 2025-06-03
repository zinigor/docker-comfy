#!/bin/bash

set -euo pipefail

mkdir -p ~/.ssh;
cd "$_";
chmod 700 ~/.ssh;
echo "$PUBLIC_KEY" >> authorized_keys;
chmod 700 authorized_keys;
service ssh start

cd /workspace
conda run -n comfy jupyter lab --LabApp.token="" --allow-root --ip "0.0.0.0" -y 2>&1 &

cd SageAttention
conda run -n comfy --live-stream python "setup.py" install

cd ../ComfyUI
conda run -n comfy --live-stream python "main.py" --listen
