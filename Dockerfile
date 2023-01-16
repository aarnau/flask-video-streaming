FROM python:3-alpine

ENV READTHEDOCS=True

RUN set -o pipefail -eux; \
    apk add git; \
    git clone https://github.com/aarnau/flask-video-streaming.git /app;

RUN pip3 install -r /app/requirements-pi.txt

WORKDIR /app

CMD [ "python", "app.py" ]