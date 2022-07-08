FROM ubuntu:20.04
RUN apt upgrade && apt update
RUN apt-get -y install curl rsync

## Instalando NVM, Node 16 e Yarn
ENV NVM_DIR /root/.nvm
ENV NODE_VERSION 16

RUN curl https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash \
    && . $NVM_DIR/nvm.sh \
    && nvm install $NODE_VERSION \
    && nvm alias default $NODE_VERSION \
    && nvm use default \
    && npm install --global yarn 