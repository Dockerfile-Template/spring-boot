FROM openjdk:17

WORKDIR /app
COPY project-name .

RUN chmod +x ./mvnw
RUN ./mvnw clean package -DskipTests

CMD ["java", "-jar", "target/project-name-0.0.1-SNAPSHOT.jar"]
