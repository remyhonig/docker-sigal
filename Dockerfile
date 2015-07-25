FROM python:3

RUN pip install sigal

RUN sh -c "echo deb http://archive.ubuntu.com/ubuntu/ trusty main > /etc/apt/sources.list.d/ubuntu.list"
RUN sh -c "echo deb-src http://archive.ubuntu.com/ubuntu/ trusty main >> /etc/apt/sources.list.d/ubuntu.list"
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install --force-yes -y python3-dev python3-setuptools

RUN pip install Pillow

WORKDIR /output
