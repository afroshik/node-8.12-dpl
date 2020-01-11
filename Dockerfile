FROM node:8.12

RUN apt-get update -qqy \
  && apt-get install -qqy \
    default-jre \
    zip \
    unzip \
    curl \
    gnupg \
    xvfb \
    python-pip \
    libpython-dev \
  && rm -rf /var/lib/apt/lists/* /var/cache/apt/*
  
RUN yarn global add npm
  
RUN gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
RUN \curl -sSL https://get.rvm.io | bash -s stable --ruby

RUN /bin/bash -l -c "gem install dpl"

RUN pip install -U pip

RUN pip install awscli
