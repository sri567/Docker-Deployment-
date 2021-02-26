FROM centos:latest
MAINTAINER demo <demo@gmail.com>
RUN yum update -y
ADD https://mirrors.sonic.net/apache/tomcat/tomcat-10/v10.0.2/bin/apache-tomcat-10.0.2.tar.gz /opt
RUN tar -xvf /opt/apache-tomcat-10.0.2.tar.gz -C /opt/
RUN mv /opt/apache-tomcat-10.0.2 /opt/tomcat
EXPOSE 8080
COPY /target/demoart-*	 /opt/tomcat/webapps/
CMD sh /opt/tomcat/bin/startup.sh && while true ; do sleep 1000; done
