FROM codercom/code-server:latest
RUN curl -o ~/miniconda.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh \
    && bash ~/miniconda.sh -b -p $HOME/miniconda \
    && $HOME/miniconda/bin/conda init bash \
    && echo "source ~/.bashrc" \
    && rm ~/miniconda.sh \
    && curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash \
    && export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")" \
    && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  \
    && nvm install v18.18.2  && nvm use v18.18.2 