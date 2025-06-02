FROM pytorch/pytorch:2.7.0-cuda12.8-cudnn9-devel AS backend-dev

WORKDIR /workspace

COPY ./backend/ComfyUI ./ComfyUI
COPY ./backend/ComfyUI-Manager ./ComfyUI/custom_nodes/ComfyUI-Manager
COPY ./backend/SageAttention ./SageAttention
COPY ./backend/filebrowser.json /etc/filebrowser/.filebrowser.json
COPY ./backend/provision.sh ./provision.sh
RUN conda create -n comfy python=3.12
RUN conda install -n comfy anaconda::git conda-forge::libgl conda-forge::libglib conda-forge::openssh
RUN conda run -n comfy pip install -r ./ComfyUI/requirements.txt

CMD [ "./provision.sh" ]
