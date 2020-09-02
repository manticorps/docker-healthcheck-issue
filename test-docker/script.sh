#!/bin/bash

cd test-1/
docker build . -t test-1
cd ..

cd test-2
docker build . -t test-2
cd ..

cd test-3
docker build . -t test-3
cd ..

cd test-4
docker build . -t test-4
cd ..

cd test-5
docker build . -t test-5
cd ..

cd test-6
docker build . -t test-6
cd ..

cd test-7
docker build . -t test-7
cd ..

cd test-8
docker build . -t test-8
cd ..

cd test-no-healthcheck
docker build . -t test-no-healthcheck
cd ..

docker service create --name test-1 test-1
docker service create --name test-2 test-2
docker service create --name test-3 test-3
docker service create --name test-4 test-4
docker service create --name test-5 test-5
docker service create --name test-6 test-6
docker service create --name test-7 test-7
docker service create --name test-8 test-8
docker service create --name test-no-healthcheck test-no-healthcheck
