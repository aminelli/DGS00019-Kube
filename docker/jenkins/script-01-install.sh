#!/bin/bash

docker network create net-jenkins

docker run \
    -d \
    --name jenkins \
    --hostname jenkins \
    --network net-jenkins \
    -p 8080:8080 \
    -p 50000:50000 \
    --restart=on-failure \
    jenkins/jenkins:lts-jdk17

docker logs -f jenkins