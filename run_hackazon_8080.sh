#!/bin/bash
#
# kill current instances
sudo killall apache2 &>/dev/null
sudo docker kill $(docker ps -q) &>/dev/null
# run hackazon
docker run --rm -it -p 8080:80 hackazon
#
