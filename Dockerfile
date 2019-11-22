FROM python:3.7-alpine

WORKDIR /code

COPY requirements.txt .

RUN apk add --no-cache --virtual .build-deps \
    build-base openssl-dev pkgconfig libffi-dev \
    cups-dev jpeg-dev && \
    pip install --no-cache-dir -r requirements.txt && \
    apk del .build-deps # delete the .build-deps in the same layer

COPY tlgm.conf .

ENV TEXT="ttestt"

ENTRYPOINT ["sh", "-c", "telegram-send --config tlgm.conf ${TEXT}"]
