FROM ubuntu:16.04

MAINTAINER Ryahn, https://github.com/Just-Some-Bots/MusicBot

#RUN apt-get update \
    # && apt-get install software-properties-common -y \
#     && add-apt-repository ppa:fkrull/deadsnakes -y \
#     && add-apt-repository ppa:mc3man/trusty-media -y \
#     && add-apt-repository ppa:chris-lea/libsodium -y \
#     && apt-get update -y \
#     && apt-get install build-essential unzip -y \
#     && apt-get install python python3.5-dev ffmpeg libopus-dev libffi-dev git libav-tools libsodium-dev python3-pip -y \
#     && apt-get upgrade -y

# ADD . /musicbot
# WORKDIR /musicbot

# RUN git clone https://github.com/Just-Some-Bots/MusicBot.git ~/musicbot -b master \
#     && cd ~/musicbot \
#     && python3.5 -m pip install -U pip \
#     && python3.5 -m pip install -U -r requirements.txt

# VOLUME /musicbot/config

# CMD python3.5 run.py