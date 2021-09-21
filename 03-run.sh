#!/bin/bash -e

xhost +

if [[ "$OSTYPE" = "darwin"* ]]; then
  docker run -it --net=host -e DISPLAY=docker.for.mac.host.internal:0 --entrypoint '/bin/bash' --device /dev/snd \
    --rm theneverhood/neverhood -c "wine ~/.wine/drive_c/Program\ Files/DreamWorks\ Interactive/Neverhood/nhc.exe"
else
  docker run -it --net=host -e DISPLAY=:0 --entrypoint '/bin/bash' --device /dev/snd \
    --rm theneverhood/neverhood -c "wine ~/.wine/drive_c/Program\ Files/DreamWorks\ Interactive/Neverhood/nhc.exe"
fi

