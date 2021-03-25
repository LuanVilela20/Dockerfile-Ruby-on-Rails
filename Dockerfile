FROM debian:latest
LABEL maintainer="Docker Debian Ruby on Rails"

ENV BASH_ENV "/root/.bashrc"

RUN apt-get update -y

RUN apt-get upgrade -y

RUN apt-get install -y gnupg2

RUN apt-get install sudo -y

RUN sudo apt-get install -y build-essential autoconf bison libssl-dev libyaml-dev libreadline-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm-dev libpq-dev curl ruby-full

RUN sudo apt-get update

RUN apt-get install ca-certificates

RUN gpg2 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB

RUN apt-get update && apt-get install -y procps

RUN curl -sSL https://get.rvm.io | bash -s stable

RUN echo 'source /usr/local/rvm/scripts/rvm' >> ~/.bashrc

RUN sudo apt-get install git

RUN /bin/bash -l -c "rvm install 2.5.3"

RUN /bin/bash -l -c "gem install rails -v 6.0.0.rc1"


EXPOSE 3000
