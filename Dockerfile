FROM python:3.8

#install os modules
RUN apt update -y && \
apt install telnet -y && \
rm -rf /var/lib/apt/lists/*

#Copy source code
RUN mkdir -p /data-copier
COPY app /data-copier/app
COPY requirements.txt /data-copier

#install dependencies
RUN pip install -r /data-copier/requirements.txt

