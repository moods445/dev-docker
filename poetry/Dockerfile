FROM python:alpine

RUN  apk update && apk add curl vim && curl -sSL https://install.python-poetry.org | python3 -  && export PATH=$PATH:$HOME/.local/bin/

# package-mode = false