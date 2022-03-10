FROM jenkins/jenkins:lts-jdk11

USER root

RUN apt update && apt install -y python

#RUN curl -O https://bootstrap.pypa.io/get-pip.py && \
RUN curl -O https://bootstrap.pypa.io/pip/2.7/get-pip.py && \
    python get-pip.py && \
    pip install ansible --upgrade

USER jenkins
