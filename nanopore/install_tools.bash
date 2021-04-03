#! /bin/bash

export PLATFORM=$(lsb_release -cs)
wget -O- https://mirror.oxfordnanoportal.com/apt/ont-repo.pub | sudo apt-key add -
"deb http://mirror.oxfordnanoportal.com/apt ${PLATFORM}-stable non-free" | tee /etc/apt/sources.list.d/nanoporetech.sources.list
apt update
apt install -y ont-guppy


wget https://github.com/lh3/minimap2/releases/download/v2.17/minimap2-2.17_x64-linux.tar.bz2 -O /tmp/minimap2-2.17_x64-linux.tar.bz2
tar -jxvf /tmp/minimap2-2.17_x64-linux.tar.bz2 -C /tmp/
cp /tmp/minimap2-2.17_x64-linux/minimap2 /usr/local/bin/