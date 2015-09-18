FROM centos:latest

MAINTAINER sczyh30 root@sczyh30.com

# install the dependencies
RUN yum update -y \
	&& yum -y install java-1.8.0-openjdk \
	&& yum -y install java-1.8.0-openjdk-devel

RUN cd /opt && curl -O http://download.jboss.org/jbossas/7.1/jboss-as-7.1.1.Final/jboss-as-7.1.1.Final.tar.gz \
	&& tar -xzvf jboss-as-7.1.1.Final.tar.gz && rm -rf jboss-as-7.1.1.Final.tar.gz

ENV JBOSS_HOME /opt/jboss-as-7.1.1.Final

EXPOSE 80 8080

CMD /opt/jboss-as-7.1.1.Final/bin/standalone.sh



