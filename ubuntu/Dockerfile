FROM ubuntu:16.04
RUN sed -i 's/archive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list
RUN  apt-get update && apt-get install -y \
    git \
    libxml2-dev \
    python \
    build-essential \
    make \
    gcc \
    python-dev \
    locales \
    python-pip \
    curl \
    wget \
    apt-utils\
    wrk\
    net-tools\
    dnsutils\
    nmap \
    iputils-ping