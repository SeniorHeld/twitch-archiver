FROM alpine:3.14

ARG TZ='Europe/Berlin'

ENV TZ ${TZ}

RUN apk add --update tzdata \
    && cp /usr/share/zoneinfo/${TZ} /etc/localtime

#all prerequisites, packages, and setup for python
RUN apk --update add --no-cache bash jq curl build-base ffmpeg python3 py3-pip perl

#python requirements install
COPY ./requirements.txt /tmp/
RUN pip install -r /tmp/requirements.txt

#script setup
RUN mkdir -p /vods /app
COPY ./app.sh /app/
RUN chmod +x /app/app.sh
WORKDIR /app/
VOLUME ["/vods/"]

ENTRYPOINT ["bash","./app.sh"]