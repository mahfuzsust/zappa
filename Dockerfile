FROM python:3.7-buster 
MAINTAINER "Mahfuzur Rahman" mahfuz.sust001@gmail.com

RUN pip install virtualenv &&
pip install --no-cache-dir zappa &&
virtualenv /var/venv &&
pip install --no-cache-dir -U pip &&
source /var/venv/bin/activate

RUN pip install --no-cache-dir awscli
RUN pip install yasha

CMD ["/bin/bash"]

