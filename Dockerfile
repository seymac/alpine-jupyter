FROM python:3.5-alpine

MAINTAINER Seyma Cakmak <seymaccakmak@gmail.com>

RUN apk update

WORKDIR /workspace

RUN apk add bash bash-doc bash-completion linux-headers gcc libzmq python3-dev libffi-dev musl-dev pkgconfig zeromq-dev

#RUN pip3 install pyzmq --install-option="--zmq=bundled"
RUN pip3 install jupyter

CMD jupyter notebook
