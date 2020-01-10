FROM node:8.12

# install RVM, Ruby, and Bundler
RUN apt-get update && apt-get -y install curl gnupg

RUN curl -L https://get.rvm.io | bash -s stable
RUN /bin/bash -l -c "rvm requirements"
RUN /bin/bash -l -c "rvm install ruby-2.4.2"
RUN /bin/bash -l -c "gem install bundler --no-ri --no-rdoc"

RUN apt-get install -qqy \
    default-jre \
    zip \
    unzip \
    gnupg \
    xvfb \
    python-pip \
    libpython-dev \
  && rm -rf /var/lib/apt/lists/* /var/cache/apt/*

RUN yarn global add npm

RUN gem install dpl

RUN pip install -U pip

RUN pip install awscli
