FROM ubuntu:trusty

RUN apt-get update
RUN apt-get -q -y install software-properties-common
RUN apt-get -q -y install python-software-properties
RUN apt-add-repository ppa:webupd8team/java
RUN apt-get update
RUN echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | sudo debconf-set-selections
RUN apt-get -q -y install oracle-java8-installer
RUN apt-get -q -y install screen

EXPOSE 25565

VOLUME ["/data","/mods","/config","/plugins"]
WORKDIR /data

COPY server.properties /data
COPY eula.txt /data
COPY minecraft_server.1.13.1.jar /data
RUN chmod +x minecraft_server.1.13.1.jar

CMD java -Xmx1024M -Xms1024M -jar /data/minecraft_server.1.13.1.jar nogui
ENV JAVA_HOME /usr/java/latest
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle
