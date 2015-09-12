FROM centos:latest

MAINTAINER sczyh30 root@sczyh30.com

ADD ./ROOT /opt/resin-pro-4.0.45/webapps
# install the dependencies
RUN yum update -y \
	&& yum -y install java-1.8.0-openjdk \
	&& yum -y install java-1.8.0-openjdk-devel

RUN cd /opt && wget http://caucho.com/download/resin-pro-4.0.45.tar.gz \
	&& tar -xzvf resin-pro-4.0.45.tar.gz && rm -rf resin-pro-4.0.45.tar.gz

ENV RESIN_HOME /opt/resin-pro-4.0.45

CMD /opt/resin-pro-4.0.45/bin/resin.sh start

EXPOSE 80 8080

