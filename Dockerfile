FROM openjdk:17-jdk-alpine
WORKDIR /minecraft
RUN wget https://launcher.mojang.com/v1/objects/feef15b6e35ec2d0d0a52373f8a6a4b5bb292b43/server.jar -O minecraft_server.jar
RUN echo "eula=true" > eula.txt
EXPOSE 25565
CMD ["java", "-Xmx1024M", "-Xms1024M", "-jar", "minecraft_server.jar", "nogui"]
