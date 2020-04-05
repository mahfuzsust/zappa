FROM docker/compose:latest

LABEL maintainer mahfuz.sust001@gmail.com

RUN apk add --no-cache --virtual .build-deps \
    g++ python3-dev \ 
    libffi-dev \ 
    openssl-dev \
    musl-dev \
    postgresql-dev \
    && apk add --no-cache --update python3

ENV PIP_DISABLE_PIP_VERSION_CHECK=1
ENV PIP_NO_CACHE_DIR=1


RUN pip3 install -U pip
RUN pip3 install virtualenv
RUN pip3 install zappa	
RUN pip3 install awscli
RUN pip3 install yasha

