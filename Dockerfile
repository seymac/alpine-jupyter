FROM alpine:latest

MAINTAINER Seyma Cakmak <seymaccakmak@gmail.com>

RUN apk update
RUN apk add wget

WORKDIR /workspace

RUN wget https://repo.continuum.io/archive/Anaconda3-4.3.0-Linux-x86_64.sh --no-check-certificate
RUN ls
RUN sha256sum Anaconda3-4.3.0-Linux-x86_64.sh

RUN apk add bash bash-doc bash-completion
RUN apk add util-linux pciutils usbutils coreutils binutils findutils grep
RUN ./Anaconda3-4.3.0-Linux-x86_64.sh

CMD jupyter notebook
