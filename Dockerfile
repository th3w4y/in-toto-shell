FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
COPY in-toto-wrapper.sh /usr/local/bin/sh
RUN apt-get update && apt-get -y install scdaemon && pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt
