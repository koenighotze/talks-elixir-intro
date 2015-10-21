FROM ubuntu:15.04

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
RUN apt-get -y install elixir git postgresql
RUN cp /usr/share/zoneinfo/Europe/Berlin  /etc/localtime 
RUN cp /usr/share/zoneinfo/Europe/Berlin  /etc/timezone 

# install sources
RUN apt-get -y install unzip

RUN useradd  -d /home/elixir/ -m -U elixir
USER elixir
WORKDIR /tmp/
RUN wget https://github.com/koenighotze/talks-elixir-intro/archive/master.zip && unzip -d $HOME master.zip && rm master.zip
RUN wget https://github.com/phoenixframework/phoenix/archive/master.zip && unzip -d $HOME master.zip && rm master.zip
RUN wget https://github.com/elixir-lang/elixir/archive/master.zip && unzip -d $HOME master.zip && rm master.zip

RUN mix local.hex
RUN mix archive.install --force https://github.com/phoenixframework/phoenix/releases/download/v1.0.3/phoenix_new-1.0.3.ez

WORKDIR /home/elixir/

# setup volume for sharing scripts
ENV SCRIPTS_VOLUME $HOME/src

VOLUME [$SCRIPTS_VOLUME]

# Run REPL
CMD ["iex"]
