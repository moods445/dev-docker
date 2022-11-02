FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive

# use bash
SHELL ["/bin/bash", "-c"]
RUN  sed  -i 's#archive.ubuntu.com#mirrors.ustc.edu.cn#g'  /etc/apt/sources.list && \
     sed  -i 's#security.ubuntu.com#mirrors.ustc.edu.cn#g'  /etc/apt/sources.list && \
     apt-get update && \
     apt-get remove certbot &&\
     apt-get install -y  vim wget iproute2 locales npm tmux \
         python3-venv libaugeas0 unzip zip iputils-ping curl software-properties-common python3.9 python3-pip  tcpdump net-tools redis-tools git fish openssh-server && \
     curl -s "https://get.sdkman.io" -o sdkman.sh && /bin/bash sdkman.sh && rm -rf sdkman.sh  && \
     source "$HOME/.sdkman/bin/sdkman-init.sh" && \
     pip install certbot  && \
     /bin/bash && \
     curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash && \
     source ~/.bashrc && \
     nvm install --lts && \
     sdk install java 8.0.292-open && \
     sdk install maven 3.8.1 && \
     sdk install gradle 7.0.2 && \
     pip install ansible stormssh && \
     apt-get autoremove -y && \
     apt-get autoclean -y  && \
     rm -rf /var/lib/apt/lists/* && \
     localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8 
ENV LANG en_US.utf8

# curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash && \
