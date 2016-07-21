FROM debian
MAINTAINER Watchanon Numnam "jiramot@gmail.com"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get -q -y install vim wget gcc make libncurses5-dev
RUN apt-get -q -y install mysql-server

ADD ./percona.sh /percona.sh
RUN /percona.sh

EXPOSE 3306
