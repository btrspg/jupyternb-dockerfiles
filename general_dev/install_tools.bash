#! /bin/bash



wget https://github.com/samtools/samtools/releases/download/1.12/samtools-1.12.tar.bz2 -O /tmp/samtools-1.12.tar.bz2
tar -jxvf /tmp/samtools-1.12.tar.bz2 -C /tmp/
cd /tmp/samtools-1.12/ && ./configure && make && make install


perl -MCPAN -e 'install Log::Log4perl'
perl -MCPAN -e 'install Math::CDF'
perl -MCPAN -e 'install CGI'
perl -MCPAN -e 'install HTML::PullParser'
perl -MCPAN -e 'install HTML::Template'
perl -MCPAN -e 'install XML::Simple'
perl -MCPAN -e 'install XML::Parser::Expat'
perl -MCPAN -e 'install XML::LibXML'
perl -MCPAN -e 'install XML::LibXML::Simple'
perl -MCPAN -e 'install XML::Compile'
perl -MCPAN -e 'install XML::Compile::SOAP11'
perl -MCPAN -e 'install XML::Compile::WSDL11'
perl -MCPAN -e 'install XML::Compile::Transport::SOAPHTTP'


wget https://meme-suite.org/meme/meme-software/5.3.2/meme-5.3.2.tar.gz -O /tmp/meme-5.3.2.tar.gz
tar -zxvf /tmp/meme-5.3.2.tar.gz -C /tmp/
cd /tmp/meme-5.3.2/ && ./configure --enable-build-libxml2 --enable-build-libxslt  --with-url=http://meme-suite.org && \
    make && make install












