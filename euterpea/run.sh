#!/bin/bash

docker run -it --rm --device /dev/snd -v $(pwd):/data --workdir /data --name euterpea euterpea
