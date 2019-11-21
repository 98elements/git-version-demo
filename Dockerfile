FROM openjdk:8-jdk-alpine
EXPOSE 8080

COPY *.jar app.jar
ENTRYPOINT ["sh", "-c", "java ${JAVA_OPTS} -jar /app.jar"]
