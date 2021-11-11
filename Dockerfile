FROM openjdk:8-jre-alpine3.7
#WORKDIR /root/
#COPY --from=builder /var/lib/jenkins/workspace/login-app/target/loginapp-0.0.1-SNAPSHOT.jar .
COPY target/*.jar /
EXPOSE 8082
ENV MYSQL_DB_HOST = ubuntu \
    MYSQL_DB_NAME = aptus \
    MYSQL_DB_PASSWORD = aptus123 \
    MYSQL_DB_PORT= 3306 \
    MYSQL_DB_USERNAME = root
ENTRYPOINT ["java", "-jar", "./loginapp-0.0.1-SNAPSHOT.jar"]
