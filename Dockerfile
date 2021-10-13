FROM openjdk:16-jdk-alpine

RUN addgroup -S mcuser

RUN adduser -S mcuser -G mcuser

RUN mkdir /minecraft-server/

COPY jar/paper-1.17.1-327.jar /minecraft-server/

RUN chown -R mcuser:mcuser minecraft-server

WORKDIR /minecraft-server/

USER mcuser

RUN echo "eula=true" > eula.txt

RUN mkdir plugins/

COPY jar/Dynmap-3.2.1-spigot.jar plugins/

CMD [ "java", "-jar", "paper-1.17.1-327.jar" ]
# CMD [ "sh"]