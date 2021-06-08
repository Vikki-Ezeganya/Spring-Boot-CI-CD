#FROM adoptopenjdk/openjdk11:alpine-jre
#EXPOSE 8080
#ARG JAR_FILE=target/spring-boot-data-jpa-0.0.1-SNAPSHOT.jar
#ADD ${JAR_FILE} app.jar

#ENTRYPOINT ["java","-jar","/app.jar"]


FROM tomcat:8.0.51-jre8-alpine
ADD target/decadevs-docker-victor.jar decadevs-docker-victor.jar
ENTRYPOINT ["java", "-jar", "decadevs-docker-victor.jar"]