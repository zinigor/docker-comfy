#!/bin/sh

set -eu

cd SageAttention
pip install packaging setuptools
python "./setup.py" install

cd ../
python "./ComfyUI/main.py" --listen
