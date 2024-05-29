# syntax=docker/dockerfile:experimental

# FROM alpine:latest
# RUN apk update ; apk upgrade
# RUN apk add --no-cache --update curl git gcc vim man-db clang make 
# RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
# ENV PATH="/root/.cargo/bin:${PATH}"


FROM rust:1-alpine3.20
WORKDIR /home/Developer
