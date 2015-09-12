FROM centos:latest

MAINTAINER sczyh30 root@sczyh30.com

# install the dependencies
RUN yum update -y \
	&& yum -y install java-1.8.0-openjdk \
	&& yum -y install java-1.8.0-openjdk-devel

RUN cd /opt && curl -O http://www.eu.apache.org/dist/activemq/5.12.0/apache-activemq-5.12.0-bin.tar.gz \
	&& tar -xzvf apache-activemq-5.12.0-bin.tar.gz  && rm -rf apache-activemq-5.12.0-bin.tar.gz 

CMD /opt/apache-activemq-5.12.0/bin/activemq

EXPOSE 8161 8161
