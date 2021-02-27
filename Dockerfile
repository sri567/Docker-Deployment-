FROM centos:latest
MAINTAINER demo <demo@gmail.com>
RUN yum update -y
RUN yum install java-1.8.0-openjdk-devel -y
ADD https://mirror.jframeworks.com/apache/tomcat/tomcat-7/v7.0.108/bin/apache-tomcat-7.0.108.tar.gz /opt
RUN tar -xvf /opt/apache-tomcat-7.0.108.tar.gz -C /opt/
RUN mv /opt/apache-tomcat-7.0.108 /opt/tomcat
EXPOSE 8080
COPY /target/demoart-*	 /opt/tomcat/webapps/
CMD sh /opt/tomcat/bin/startup.sh && while true ; do sleep 1000; done
