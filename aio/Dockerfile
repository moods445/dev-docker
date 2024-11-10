FROM debian:bullseye

RUN apt-get update && apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl  wget \
    gnupg \
    sudo  vim git zip unzip\
    lsb-release \
    && curl -sL https://deb.nodesource.com/setup_18.x | bash - \
    && wget https://go.dev/dl/go1.23.2.linux-amd64.tar.gz &&  rm -rf /usr/local/go && tar -C /usr/local -xzf go1.23.2.linux-amd64.tar.gz \
    && rm go1.23.2.linux-amd64.tar.gz \
    && rm -rf /var/lib/apt/lists/*

ARG USER=aio
RUN useradd --groups sudo --no-create-home --shell /bin/bash ${USER} \
    && echo "${USER} ALL=(ALL) NOPASSWD:ALL" >/etc/sudoers.d/${USER} \
    && chmod 0440 /etc/sudoers.d/${USER}
USER ${USER}
WORKDIR /home/${USER}

# 更改为 bash
SHELL ["/bin/bash", "-c"]

RUN touch $HOME/.bashrc && echo 'export PATH=$PATH:/usr/local/go/bin'  | tee -a ~/.bashrc \
    && curl -s "https://get.sdkman.io" | bash \  
    && source "$HOME/.sdkman/bin/sdkman-init.sh" \
    && sdk install java 24.ea.21-open \
    && sdk use java 24.ea.21-open \
    && sdk install maven 3.8.6 \
    && sdk use maven 3.8.6

# && source "$HOME/.sdkman/bin/sdkman-init.sh" \