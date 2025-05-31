FROM python:3.12 AS backend-dev

WORKDIR /usr/src/app

COPY backend/ComfyUI/requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "./backend/ComfyUI/main.py" ]

