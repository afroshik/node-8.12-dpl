FROM node:8.12

RUN apt-get update -qqy \
  && apt-get install -qqy \
    default-jre \
    zip \
    unzip \
    ruby \
    curl \
    gnupg \
    xvfb \
    python-pip \
    libpython-dev \
  && rm -rf /var/lib/apt/lists/* /var/cache/apt/*
  
RUN apt-get update
RUN sudo apt-get install software-properties-common
RUN sudo apt-add-repository ppa:brightbox/ruby-ng
RUN sudo apt-get update
RUN sudo apt-get install ruby2.4 ruby2.4-dev

RUN yarn global add npm

RUN gem install dpl

RUN pip install -U pip

RUN pip install awscli
