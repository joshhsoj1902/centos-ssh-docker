FROM jdeathe/centos-ssh:latest@sha256:d765a554b33ea446f584acb69d001f8aadf8520176d37c870396b40853161e8b

RUN yum install -y wget \
 && wget -qO- https://get.docker.com/ | sh \
 && systemctl enable docker.service

RUN yum install -y python-pip \
 && pip install docker-compose