FROM eclipse-temurin:21

WORKDIR /build

COPY build/libs/JenkinsNomadTest-0.0.1-SNAPSHOT.jar /build/app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]