#!/bin/bash

docker-compose rm -f 
docker rmi -f workspace_myapp_1
docker-compose up
