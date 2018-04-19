FROM jdeathe/centos-ssh:latest

RUN yum install -y wget \
 && wget -qO- https://get.docker.com/ | sh

RUN yum install -y python-pip \
 && pip install docker-compose