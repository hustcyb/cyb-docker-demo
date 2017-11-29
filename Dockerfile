FROM hustcyb/oraclejdk
VOLUME /tmp
WORKDIR /data
ARG JAR_FILE
ADD ${JAR_FILE} app.jar
# ADD target/lib lib
EXPOSE 8080
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "app.jar"]