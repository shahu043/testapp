FROM openjdk:8-jre-alpine3.7
#WORKDIR /root/
#COPY --from=builder /var/lib/jenkins/workspace/login-app/target/loginapp-0.0.1-SNAPSHOT.jar .
COPY target/*.jar /
EXPOSE 8082
ENTRYPOINT ["java", "-jar", "./loginapp-0.0.1-SNAPSHOT.jar"]
