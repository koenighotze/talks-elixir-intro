FROM ubuntu:14.04.3

MAINTAINER David Schmitz <koenighotze@yahoo.com>
ENV REFRESHED_AT 2015-09-15

RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

# install elixir
RUN apt-get -y install wget
RUN wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && dpkg -i erlang-solutions_1.0_all.deb
RUN apt-get -qq update
RUN apt-get -y install elixir

# todo setup postgres for phoenix
WORKDIR /home/demo

# todo checkout demo app

# Run REPL
CMD ["iex"]
