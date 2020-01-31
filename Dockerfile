FROM node:8.12

RUN apt-get update -qqy \
  && apt-get install -qqy \
    default-jre \
    zip \
    unzip \
    ruby-full \
    curl \
    gnupg \
    xvfb \
    python-pip \
    libpython-dev \
  && rm -rf /var/lib/apt/lists/* /var/cache/apt/*
  
RUN apt-get update && apt-get install -y software-properties-common
RUN apt-add-repository ppa:brightbox/ruby-ng-experimental
RUN apt-get update && apt-get install ruby2.4

RUN yarn global add npm

RUN gem install dpl

RUN pip install -U pip

RUN pip install awscli
