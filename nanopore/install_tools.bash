#! /bin/bash


wget -O- https://mirror.oxfordnanoportal.com/apt/ont-repo.pub | sudo apt-key add -
"deb http://mirror.oxfordnanoportal.com/apt $(lsb_release -cs)-stable non-free" | tee /etc/apt/sources.list.d/nanoporetech.sources.list
apt update
apt install -y ont-guppy


wget https://github.com/lh3/minimap2/releases/download/v2.17/minimap2-2.17_x64-linux.tar.bz2 -O /tmp/minimap2-2.17_x64-linux.tar.bz2
tar -jxvf /tmp/minimap2-2.17_x64-linux.tar.bz2 -C /tmp/
cp /tmp/minimap2-2.17_x64-linux/minimap2 /usr/local/bin/

pip3 install git+git://github.com/bartongroup/2passtools.git

wget https://github.com/samtools/samtools/releases/download/1.12/samtools-1.12.tar.bz2 -O /tmp/samtools-1.12.tar.bz2
tar -jxvf /tmp/samtools-1.12.tar.bz2 -C /tmp/
cd /tmp/samtools-1.12/ && ./configure && make && make install

wget http://ccb.jhu.edu/software/stringtie/dl/stringtie-2.1.5.Linux_x86_64.tar.gz -O /tmp/stringtie-2.1.5.Linux_x86_64.tar.gz
tar -zxvf /tmp/stringtie-2.1.5.Linux_x86_64.tar.gz -C /tmp/
cp /tmp/stringtie-2.1.5.Linux_x86_64/stringtie /usr/local/bin/
cp /tmp/stringtie-2.1.5.Linux_x86_64/prepDE.py3 /usr/local/bin/prepDE


cd /tmp/  && git clone --recursive https://github.com/jts/nanopolish.git && cd nanopolish && make \
  && cp nanopolish /usr/local/bin

wget http://ccb.jhu.edu/software/stringtie/dl/gffcompare-0.12.2.Linux_x86_64.tar.gz -O /tmp/gffcompare-0.12.2.Linux_x86_64.tar.gz
tar -zxvf /tmp/gffcompare-0.12.2.Linux_x86_64.tar.gz -C /tmp/
cp /tmp/gffcompare-0.12.2.Linux_x86_64/gffcompare /usr/local/bin/
