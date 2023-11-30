#!/bin/bash

docker run -it --rm --device /dev/snd --group-add=audio -v $(pwd):/data --workdir /data --name euterpea euterpea
