FROM ubuntu:14.04

# Install build essentials
RUN apt-get update -qq
RUN apt-get install -y --force-yes build-essential curl git zlib1g-dev libssl-dev libreadline-dev libyaml-dev libxml2-dev libxslt-dev

# Install Ruby 2.1.3 && bundler
RUN curl -O http://ftp.ruby-lang.org/pub/ruby/2.1/ruby-2.1.3.tar.gz && \
    tar zxvf ruby-2.1.3.tar.gz && \
    cd ruby-2.1.3 && \
    ./configure --disable-install-doc && \
    make && \
    make install && \
    cd .. && \
    rm -r ruby-2.1.3 ruby-2.1.3.tar.gz && \
    echo 'gem: --no-document' >> /usr/local/etc/gemrc && \
    echo 'gem: --no-rdoc --no-ri' >> .gemrc
RUN gem install bundler

# Install SQLite3
RUN apt-get install -y sqlite3 libsqlite3-dev

# Install Node.js and npm
RUN apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:chris-lea/node.js && \
    apt-get update -qq
RUN apt-get install -y nodejs
