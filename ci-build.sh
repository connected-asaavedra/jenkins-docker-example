#!/bin/bash

docker rmi -f myapp_tests || :
docker-compose -f docker-compose-tests.yml up --build
exit_code=$?

if [ $exit_code -eq 0 ]; then
  echo 'build passed!!!'
else
  echo 'build failed!!!'
fi

docker rm -f myapp_test_1
docker rmi -f myapp_tests

exit $exit_code;
