FROM openjdk:8-jdk-alpine

COPY h2*.jar /h2.jar

WORKDIR / 

EXPOSE 9092

CMD ["java", "-cp", "h2.jar", "org.h2.tools.Server"]
