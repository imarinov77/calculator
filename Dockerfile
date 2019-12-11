FROM openjdk:8-jre
COPY build/libs/calculator-0.0.1-SNAPSHOT.jar app.jar
#RUN docker run -v /var/run/docker.sock:/var/run/docker.sock -ti docker
ENTRYPOINT ["java", "-jar", "app.jar"]

