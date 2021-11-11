FROM openjdk:8-jre-alpine3.7
WORKDIR /root/
COPY --from=builder /var/lib/jenkins/workspace/login-app/target/app.jar .

EXPOSE 8082
ENTRYPOINT ["java", "-jar", "./app.jar"]
