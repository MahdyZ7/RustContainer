# syntax=docker/dockerfile:experimental

FROM alpine:latest
RUN apk update ; apk upgrade
RUN apk add curl git gcc
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"
