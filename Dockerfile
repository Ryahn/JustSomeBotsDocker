FROM ubuntu:16.04

MAINTAINER Ryahn, https://github.com/Just-Some-Bots/MusicBot

RUN echo "Updating" && apt-get update
RUN echo "Installing software-properties-common" && apt-get install software-properties-common -y
RUN echo "Adding ppa:fkrull/deadsnakes" && add-apt-repository ppa:fkrull/deadsnakes -y
RUN echo "Adding ppa:mc3man/trusty-media" && add-apt-repository ppa:mc3man/trusty-media -y
RUN echo "Adding ppa:chris-lea/libsodium" && add-apt-repository ppa:chris-lea/libsodium -y
RUN echo "Updating" && apt-get update -y
RUN echo "Installing build-essential unzip" && apt-get install build-essential unzip -y
RUN echo "Installing python python3.5-dev ffmpeg libopus-dev libffi-dev git libav-tools libsodium-dev python3-pip" && apt-get install python python3.5-dev ffmpeg libopus-dev libffi-dev git libav-tools libsodium-dev python3-pip -y
RUN echo "Upgrading" && apt-get upgrade -y

ADD . /musicbot
WORKDIR /musicbot

RUN git clone https://github.com/Just-Some-Bots/MusicBot.git ~/musicbot -b master \
    && cd ~/musicbot \
    && python3.5 -m pip install -U pip \
    && python3.5 -m pip install -U -r requirements.txt

VOLUME /musicbot/config

CMD python3.5 run.py