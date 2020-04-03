FROM docker/compose:latest

LABEL maintainer mahfuz.sust001@gmail.com

RUN apk add --no-cache --virtual .build-deps \
    g++ python3-dev \ 
    libffi-dev \ 
    openssl-dev \
    musl-dev \
    postgresql-dev \
    && apk add --no-cache --update python3

RUN pip3 install --no-cache-dir -U pip
RUN pip3 install --no-cache-dir virtualenv
RUN pip3 install --no-cache-dir zappa
RUN pip3 install --no-cache-dir awscli
RUN pip3 install --no-cache-dir yasha