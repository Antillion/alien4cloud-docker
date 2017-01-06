FROM ubuntu:14.04
MAINTAINER Oliver Tupman <otupman@antillion.com>
# Original maintainer: https://github.com/san-tak/dockerfile
# setting proxy
#ENV http_proxy http://xxx.xxx.xxx.xxx:8080
#ENV https_proxy https://xxx.xxx.xxx.xxx:8080

RUN echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
RUN echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections

RUN apt-get update && \
    apt-get install -y software-properties-common \
                       python-software-properties && \
    add-apt-repository ppa:webupd8team/java -y && \
    apt-get update && \
    apt-get install -y oracle-java8-installer \
                       wget && \
    apt-get clean && \
    rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

RUN wget -q "http://fastconnect.org/maven/service/local/artifact/maven/redirect?r=opensource&g=alien4cloud&a=alien4cloud-ui&v=1.3.0&p=war&c=standalone" -O /root/alien4cloud-1.3.0-standalone.war
VOLUME /opt/alien4cloud-data
VOLUME /root/config
ADD config /root/config
ADD start.sh /root/start.sh


#CMD java -XX:MaxPermSize=512m -jar /root/alien4cloud-1.3.0-standalone.war --spring.profiles.active=security-demo
WORKDIR /root
CMD /root/start.sh
EXPOSE 8088 8089