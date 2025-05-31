FROM pytorch/pytorch:2.7.0-cuda11.8-cudnn9-devel AS backend-dev

WORKDIR /workspace

COPY backend/ComfyUI/requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# COPY backend/SageAttention/ /workspace/SageAttention/
# RUN pip install packaging setuptools
# RUN python ./SageAttention/setup.py install

COPY . .

CMD [ "python", "./backend/ComfyUI/main.py" ]

