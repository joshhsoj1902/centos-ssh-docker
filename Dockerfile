FROM jdeathe/centos-ssh:latest@sha256:77040b8abd198538b8c5b81cd69c8935d52ddd0544e4348ae2d877403f615548

RUN yum install -y wget \
 && wget -qO- https://get.docker.com/ | sh \
 && systemctl enable docker.service

RUN yum install -y python-pip \
 && pip install docker-compose