# syntax=docker/dockerfile:experimental

FROM alpine:latest
RUN apk update ; apk upgrade
RUN apk add bash curl git
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs -y | sh
CMD ["ls"]
