#!/bin/bash -e

echo "Saving the container"

docker commit nhcsetup theneverhood/neverhood:latest
docker kill nhcsetup
docker container rm nhcsetup
