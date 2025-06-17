FROM pytorch/pytorch:2.7.0-cuda12.8-cudnn9-devel AS backend-dev

WORKDIR /workspace

ENV __COMFYUI_DESKTOP_VERSION__="0.3.41"
ENV JUPYTER_PORT="3000"
ENV DEBIAN_FRONTEND="noninteractive"
ENV PYTHONDONTWRITEBYTECODE=1

RUN apt update && apt install -y openssh-server
COPY ./backend/ComfyUI ./ComfyUI
COPY ./backend/ComfyUI-Manager ./ComfyUI/custom_nodes/ComfyUI-Manager
COPY ./backend/SageAttention ./SageAttention
COPY ./backend/provision.sh ./provision.sh
RUN conda create -n comfy python=3.12 && \
    conda install -n comfy anaconda::git conda-forge::libgl conda-forge::libglib conda-forge::jupyterlab conda-forge::sqlite && \
    conda run -n comfy pip install --no-cache-dir -r ./ComfyUI/requirements.txt && \
    conda clean --all -y

CMD [ "./provision.sh" ]
