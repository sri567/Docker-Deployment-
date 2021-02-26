FROM centos:latest
MAINTAINER demo <demo@gmail.com>
RUN sudo yum update -y
ADD http://apachemirror.wuchna.com/tomcat/tomcat-8/v8.5.51/bin/apache-tomcat-8.5.51.tar.gz /opt
ADD apache-tomcat-8.5.51.tar.gz /opt/
RUN mv /opt/apache-tomcat-8.5.51 /opt/tomcat
EXPOSE 8090
COPY /target/demoart-*	 /opt/tomcat/webapps/

CMD sh /opt/tomcat/bin/startup.sh && while true ; do sleep 1000; done
