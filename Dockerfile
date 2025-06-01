FROM pytorch/pytorch:2.7.0-cuda12.8-cudnn9-devel AS backend-dev

WORKDIR /workspace

COPY ./backend/ComfyUI ./ComfyUI
COPY ./backend/SageAttention ./SageAttention
COPY ./backend/provision.sh ./provision.sh
RUN pip install --no-cache-dir -r ./ComfyUI/requirements.txt

CMD [ "./provision.sh" ]
