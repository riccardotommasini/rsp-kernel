#! /bin/bash
docker build -t mynotebook .
export WASP=$(sudo docker run -d -p 8888:8888 --rm -v ~/_Projects/RSP/wasp-notebook:/home/jovyan/work mynotebook)
docker exec -it ${WASP} /bin/bash