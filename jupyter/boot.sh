#!/bin/bash
docker run  -d --name jupyter --gpus all -e GRANT_SUDO=yes -e NOTEBOOK_ARGS="--NotebookApp.allow_origin='https://colab.research.google.com' --NotebookApp.port_retries=0" --user root  -p  8888:8888 -v /home/ubuntu/docker/jupyter/data/:/home/jovyan/work mmmoooddd/jupyter
