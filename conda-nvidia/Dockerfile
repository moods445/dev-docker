FROM nvidia/cuda:11.8.0-base-ubuntu22.04 AS builder
ENV DEBIAN_FRONTEND=noninteractive
ENV PATH="/root/miniconda/bin:${PATH}"
# Set the default shell to bash
SHELL ["/bin/bash", "-c"]

RUN apt-get update && apt-get install -y tmux wget \
    && wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh \
    && bash ~/miniconda.sh -b -p $HOME/miniconda \
    && conda init bash \
    && apt-get autoremove -y  \
    && apt-get autoclean -y   \
    && rm -rf /var/lib/apt/lists/* 
    # && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8  

ENV LANG en_US.utf8