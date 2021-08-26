FROM openjdk:16-alpine3.13

COPY fabric-installer-0.7.4.jar .

RUN mkdir /minecraft

RUN java -jar fabric-installer-0.7.4.jar server -dir /minecraft -downloadMinecraft

RUN rm fabric-installer-0.7.4.jar

VOLUME [ "/minecraft" ]

WORKDIR /minecraft

RUN echo "eula=true" > eula.txt

CMD [ "java", "-jar", "fabric-server-launch.jar" ]