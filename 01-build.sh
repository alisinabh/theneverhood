#!/bin/bash -e

echo "Building the base docker image"

docker build -t theneverhood/neverhood .

echo "Running base setup"

docker run -it --net=host -e DISPLAY=:0 --device /dev/snd --name nhcsetup theneverhood/neverhood
