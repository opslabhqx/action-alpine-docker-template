# syntax=docker/dockerfile:1

# renovate: datasource=docker depName=alpine
ARG ALPINE_VERSION=3.20.1
# renovate: datasource=docker depName=openjdk
ARG OPENJDK_VERSION=19-jdk-alpine

FROM openjdk:${OPENJDK_VERSION} AS base

# Base image for the final stage
RUN apk add --no-cache bash git curl

FROM openjdk:${OPENJDK_VERSION} AS build

WORKDIR /app

COPY Action.java .

RUN javac Action.java

FROM base

WORKDIR /app

COPY --from=build /app/Action.class .

# Clear and enable Alpine caching
RUN mkdir -p /var/cache/apk \
    && ln -s /var/cache/apk /etc/apk/cache \
    && rm -rf /var/cache/apk/*

USER root
