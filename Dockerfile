FROM openjdk:8-jre-alpine3.7
COPY target/*.jar /
EXPOSE 8082
ENTRYPOINT ["java", "-jar", "./loginapp-0.0.1-SNAPSHOT.jar"]
