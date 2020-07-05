FROM python:3.7-buster

LABEL maintainer mahfuz.sust001@gmail.com

RUN apt update
RUN apt install docker.io -y
RUN curl -L "https://github.com/docker/compose/releases/download/1.26.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
RUN chmod +x /usr/local/bin/docker-compose
RUN apt install build-essential -y
RUN apt install g++ gcc python3-dev libffi-dev libpq-dev libc-dev make musl-dev libssl-dev -y
RUN apt install postgresql postgresql-contrib -y

RUN pip install -U pip
RUN pip install --upgrade setuptools
RUN pip install virtualenv
RUN pip install zappa	
RUN pip install awscli
RUN pip install yasha
