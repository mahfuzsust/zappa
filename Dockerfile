FROM python:3.7-buster 
MAINTAINER "Mahfuzur Rahman" mahfuz.sust001@gmail.com

RUN pip install --no-cache-dir -U pip
RUN pip install virtualenv
RUN pip install --no-cache-dir zappa
RUN pip install --no-cache-dir awscli
RUN virtualenv /var/venv
RUN source /var/venv/bin/activate

CMD ["/bin/bash"]
