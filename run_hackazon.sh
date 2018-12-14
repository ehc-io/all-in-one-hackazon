#!/bin/bash
#
if [ $# -lt 1 ]
  then
    echo
    echo "Usage: run_hackazon.sh <EXPOSED PORT of HACKAZONE SERVICE>"
    echo
    exit
fi
# kill current instances
# sudo killall apache2 &>/dev/null
# sudo docker kill $(docker ps -q) &>/dev/null
docker kill hackazon 
# run hackazon
docker run --name hackazon --rm -it -p $1:80 hackazon
#
