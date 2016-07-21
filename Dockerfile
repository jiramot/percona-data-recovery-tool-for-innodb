FROM debian
RUN apt-get update
RUN apt-get install -y vim wget gcc make
#RUN apt-get install -y mysql-server
RUN apt-get install -y libncurses5-dev 
#RUN apt-get build-dep nmon
ADD ./percona.sh /percona.sh
RUN /percona.sh
