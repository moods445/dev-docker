ARG OWNER=modds
ARG BASE_CONTAINER=jupyter/datascience-notebook
FROM $BASE_CONTAINER

LABEL maintainer="jasonero <jasonero@live.com>"

SHELL ["/bin/bash", "-o", "pipefail", "-c"] 

USER root 

RUN pip install jupyter_http_over_ws && \
    pip3 install torch torchvision torchaudio && \
    jupyter serverextension enable --py jupyter_http_over_ws && \
    apt-get update && \
    apt-get install libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6 -y 

USER ${NB_UID} 
WORKDIR "${HOME}"


