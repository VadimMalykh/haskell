#!/bin/bash

docker run -it --rm --pull always -u $(id -u):$(id -g) -v $(pwd):/data --workdir /data --name haskell haskell bash
