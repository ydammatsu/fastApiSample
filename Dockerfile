FROM python:3.8-alpine

WORKDIR /app

COPY requirements.txt .

RUN apk add --no-cache build-base \
 && pip install --no-cache-dir --trusted-host pypi.python.org -r requirements.txt \
 && apk del build-base

COPY main.py .
