FROM centos:7

MAINTAINER Fangchun Qiu

WORKDIR /opt
ENV JAVA_HOME /opt/jdk1.7.0
ENV CATALINA_HOME /opt/apache-tomcat-7.0.47
ENV PATH $CATALINA_HOME/bin:$JAVA_HOME/bin:$PATH
ENV TIME_ZONE Asia/Shanghai

RUN yum -y install wget \

&& wget -O tomcat.tar.gz 'http://9.115.91.58/images/apache-tomcat-7.0.47.tar.gz' \

&& tar -zxvf tomcat.tar.gz --strip-components=1 \


&& rm tomcat.tar.gz* \

&& echo "${TIME_ZONE}" > /etc/timezone \
&& ln -sf /usr/share/zoneinfo/${TIME_ZONE} /etc/localtime \

&& wget -O jdk1.7.tar.gz 'http://9.115.91.58/images/jdk1.7.0.tar.gz' \
&& tar -zxvf jdk1.7.tar.gz --strip-components=1 \
&& rm jdk1.7.tar.gz 

COPY ./mrr/src/main/webapp /opt/apache-tomcat-7.0.47/webapps/	

EXPOSE 8080

CMD ["catalina.sh", "run"]
