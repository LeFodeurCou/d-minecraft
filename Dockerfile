FROM openjdk:16-jdk-alpine

# RUN addgroup -S mcuser

# RUN adduser -S mcuser -G mcuser

WORKDIR /minecraft-server/


# RUN chown -R mcuser:mcuser .

# USER mcuser

# COPY jar/paper-1.17.1-327.jar .

# RUN echo "eula=true" > eula.txt

# RUN mkdir plugins/

# COPY jar/Dynmap-3.2.1-spigot.jar plugins/

CMD [ "java", "-jar", "paper-1.17.1-327.jar" ]