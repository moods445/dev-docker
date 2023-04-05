FROM nvidia/cuda:11.8.0-base-ubuntu22.04 AS builder
ENV DEBIAN_FRONTEND=noninteractive
ENV PATH="/root/miniconda/bin:${PATH}"
# Set the default shell to bash
RUN apt-get update && apt-get install -y tmux wget \
    && wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh \
    && bash ~/miniconda.sh -b -p $HOME/miniconda \
    && conda init bash 

# COPY source-bashrc.sh /root/source-bashrc.sh
# RUN export PATH="$HOME/miniconda/bin:$PATH" \
# FROM nvidia/cuda:11.8.0-base-ubuntu22.04 
# COPY --from=builder /root/miniconda /root/miniconda
# COPY --from=builder /root/.bashrc /root/
SHELL ["/bin/bash", "--login" ,"-c"]

RUN conda init bash \
    && /bin/bash -c "conda create -n  tf -y python=3.9 \
    && conda activate tf \
    && pip install --upgrade pip \
    && pip install tensorflow \
    && conda install -y pytorch torchvision torchaudio pytorch-cuda=11.8 -c pytorch -c nvidia \
    && pip install --upgrade 'jax[cuda11_pip]' -f https://storage.googleapis.com/jax-releases/jax_cuda_releases.html \
    && pip install transformers \
    && apt-get autoremove -y  \
    && apt-get autoclean -y   \
    && rm -rf /var/lib/apt/lists/* \
    && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8  "

ENV LANG en_US.utf8
