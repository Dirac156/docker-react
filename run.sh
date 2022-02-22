#! /usr/bin/bash

sudo docker run -p 3000:3000 -v /app/node_modules -v$(pwd):/app $1


# required node_modules on local machine
# sudo docker run -p 3000:3000 -v$(pwd):/app $1
