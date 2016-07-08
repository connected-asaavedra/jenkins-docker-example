#!/bin/bash

docker-compose rm -f 
docker rmi -f jenkins_myapp
docker-compose up
