FROM python:3.7-buster 

LABEL maintainer mahfuz.sust001@gmail.com

RUN pip install --no-cache-dir -U pip
RUN pip install --no-cache-dir virtualenv
RUN pip install --no-cache-dir zappa
RUN pip install --no-cache-dir awscli
RUN pip install --no-cache-dir yasha

CMD ["/bin/bash"]