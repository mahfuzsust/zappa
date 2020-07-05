FROM python:3.8-buster

LABEL maintainer mahfuz.sust001@gmail.com

RUN apt update
RUN apt install docker.io -y
RUN curl -L "https://github.com/docker/compose/releases/download/1.26.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
RUN chmod +x /usr/local/bin/docker-compose
RUN apt install postgresql postgresql-contrib -y
RUN apt install gcc libffi-dev python3-dev libssl-dev -y

RUN pip install -U pip
RUN pip install --upgrade setuptools
RUN pip install virtualenv
RUN pip install zappa	
RUN pip install awscli
RUN pip install yasha
