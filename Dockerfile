FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    sudo \
    git \
    vim \
    tmux \
    curl \
    wget \
    python3 python3-pip \
    build-essential \
    nodejs npm \
    neovim \
    nano \
    emacs \
    kakoune && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN useradd -ms /bin/bash devuser && \
    echo "devuser:password" | chpasswd && \
    usermod -aG sudo devuser

USER devuser
WORKDIR /home/devuser

