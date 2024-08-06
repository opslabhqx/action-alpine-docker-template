# syntax=docker/dockerfile:1

# renovate: datasource=docker depName=alpine
ARG ALPINE_VERSION=3.20.2
# renovate: datasource=docker depName=golang
ARG GO_VERSION=1.22.6

FROM alpine:${ALPINE_VERSION} AS base

# Base image for the final stage
RUN apk add --no-cache bash git curl go

FROM golang:${GO_VERSION}-alpine AS build

WORKDIR /app

COPY go.mod .

RUN go mod download

COPY action.go .

RUN go build -o action .

FROM base

WORKDIR /app

COPY --from=build /app/action .

# Clear and enable Alpine caching
RUN mkdir -p /var/cache/apk \
    && ln -s /var/cache/apk /etc/apk/cache \
    && rm -rf /var/cache/apk/*

USER root
