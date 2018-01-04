#!/bin/sh

docker rm -f portainer
docker rmi portainer/portainer:develop
docker rmi portainer/portainer
docker run -d --name portainer -p 9000:9000 -v /var/run/docker.sock:/var/run/docker.sock -v /opt/portainer:/data portainer/portainer
