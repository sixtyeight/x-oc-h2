FROM openjdk:8-jdk

RUN useradd --create-home -s /bin/bash h2 
WORKDIR /home/h2
USER h2 

COPY h2*.jar /home/h2/h2.jar

EXPOSE 9092
EXPOSE 8082

RUN mkdir /home/h2/dbs

CMD ["java", "-cp", "h2.jar", "org.h2.tools.Server", "-tcpAllowOthers", "-webAllowOthers" , "-baseDir", "/home/h2/dbs"]
