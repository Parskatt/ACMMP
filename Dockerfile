FROM nvidia/cuda:11.8.0-cudnn8-devel-ubuntu22.04

RUN apt-get update
RUN apt-get install -y cmake git
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y libopencv-dev
RUN git clone https://github.com/Parskatt/ACMMP.git
WORKDIR /ACMMP
RUN cmake . && make
RUN mv ACMMP /usr/local/
WORKDIR /
