#! /bin/bash

apt-get update -qq
apt-get install -y \
        apt-utils \
        apt-transport-https \
	      dirmngr \
        gnupg \
	      libcurl4-openssl-dev \
	      libnlopt-dev \
	      libssl-dev \
	      libxml2-dev \
        lsb-release \
        libxt-dev \
        dialog \
        software-properties-common
apt-key adv \
        --keyserver keyserver.ubuntu.com \
        --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
add-apt-repository \
        --yes \
        "deb https://mirror-hk.koddos.net/CRAN/bin/linux/ubuntu/ $(lsb_release -c -s)-cran40/"

apt-get update -qq
apt-get install -y \
        aptdaemon \
        ed \
        git \
        mercurial \
        libcairo-dev \
        libedit-dev \
        libxml2-dev \
        r-base \
        r-base-dev \
        sudo \
        gzip \
        wget \
        curl \
        libhdf5-dev \
        python3-pip \
        libcunit1 \
        libcunit1-dev \
        libhdf5-dev \
        libopenblas-base \
        libopenblas-dev


curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
apt-get install -y nodejs
wget -O - https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
apt-get update -qq
apt-get install -y yarn
npm install -g configurable-http-proxy
rm -rf /var/lib/apt/lists/*
useradd -m -s /bin/bash -N -u "${nb_uid}" "${nb_user}"

mkdir /opt/work
mkdir /home/"${nb_user}"/.jupyter
mkdir /home/"${nb_user}"/.local
echo "cacert=/etc/ssl/certs/ca-certificates.crt" > /home/${nb_user}/.curlrc


rm -rf /var/lib/apt/lists/*

chown -R "${nb_user}" /home/"${nb_user}"/ /opt/work


