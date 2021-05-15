FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive

# use bash
SHELL ["/bin/bash", "-c"]
RUN  sed  -i 's#archive.ubuntu.com#mirrors.ustc.edu.cn#g'  /etc/apt/sources.list && \
     sed  -i 's#security.ubuntu.com#mirrors.ustc.edu.cn#g'  /etc/apt/sources.list && \
     apt-get update && \
     apt-get install -y  vim wget iproute2 unzip zip iputils-ping curl software-properties-common python3.9 python3-pip  tcpdump net-tools redis-tools git fish openssh-server && \
     curl -s "https://get.sdkman.io" | bash   && \
     source "$HOME/.sdkman/bin/sdkman-init.sh" && \
     sdk install java 8.0.292-open && \
     sdk install maven 3.8.1 && \
     sdk install gradle 7.0.2 && \
     pip install ansible stormssh && \
     apt-get autoremote -y && \
     apt-get autoclean -y 

# curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash && \





                