# docker-minecraft for version 1.13.1
use docker command:
docker run -d -p 25565:25565 --name MC-1.13.1 tinyavaya777/minecraft-server:1.13.1

# Mount your local volume with your world-map or server.properties
docker run -d -p 25565:25565 -v /home/user/world-map:/data --name MC-1.13.1 tinyavaya777/minecraft-server:1.13.1
