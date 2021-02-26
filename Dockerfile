FROM centos:latest
MAINTAINER demo <demo@gmail.com>
RUN yum update -y
ADD https://mirrors.ocf.berkeley.edu/apache/tomcat/tomcat-8/v8.5.63/bin/apache-tomcat-8.5.63.tar.gz /opt
RUN tar -xvf /opt/apache-tomcat-8.5.63.tar.gz -C /opt/
RUN mv /opt/apache-tomcat-8.5.63 /opt/tomcat
EXPOSE 8080
COPY /target/demoart-*	 /opt/tomcat/webapps/

CMD sh /opt/tomcat/bin/startup.sh && while true ; do sleep 1000; done
