#!/bin/bash
imageName=xx:adityabose/cat-flask
containerName=cat-flask

docker build -t $imageName -f Dockerfile  .

echo Delete old container...
docker rm -f $containerName

echo Run new container...
docker run -d -p 8888:5000 --name $containerName $imageName
