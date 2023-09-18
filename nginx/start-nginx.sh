#!/bin/bash

echo "SET ENV FOR DOCKER COMMAND:"
echo "   BUILD (build image 1rst time)"
echo "   MAKE  (build container 1rst time)"
echo "   STOP  (stop container)"
echo "   START (start container)"
echo "   DELETE (destroy container)"



# -- SET ENV
export BUILD="docker build -t inception/nginx ."
export MAKE="docker run -it --name nginx inception/nginx"
export STOP="docker stop nginx"
export START="docker start -i nginx"
export DELETE="docker rm -f nginx"
