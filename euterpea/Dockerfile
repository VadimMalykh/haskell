FROM codebattle/haskell:8.4.3

RUN apk add git
RUN apk add alsa-lib-dev
RUN apk add alsa-utils
RUN git clone https://github.com/Euterpea/Euterpea2.git
WORKDIR Euterpea2
RUN cabal v1-update
RUN cabal v1-install
