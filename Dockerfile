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
  
RUN apt-get install -y software-properties-common && apt-get update
  
RUN apt-add-repository ppa:brightbox/ruby-ng && apt-get update && apt-get install ruby2.5
  
RUN yarn global add npm

RUN gem install dpl

RUN pip install -U pip

RUN pip install awscli
