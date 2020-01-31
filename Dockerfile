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
  
RUN apt-get update && apt-get install -y libssl-dev libreadline-dev libyaml-dev \
  libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common \
  && rm -rf /var/lib/apt/lists/* /var/cache/apt/*
 
RUN apt-get update && apt-get install -y ruby-full

RUN yarn global add npm

RUN gem install dpl

RUN pip install -U pip

RUN pip install awscli
