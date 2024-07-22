# syntax=docker/dockerfile:1

# renovate: datasource=docker depName=alpine
ARG ALPINE_VERSION=3.20.2
# renovate: datasource=docker depName=rust
ARG RUST_VERSION=1.79.0

FROM alpine:${ALPINE_VERSION} AS base

# Base image for the final stage
RUN apk add --no-cache bash git curl

FROM rust:${RUST_VERSION}-alpine AS build

WORKDIR /app

COPY Cargo.toml .

RUN cargo fetch

COPY src ./src

RUN cargo build --release

FROM base

WORKDIR /app

COPY --from=build /app/target/release/action .

# Clear and enable Alpine caching
RUN mkdir -p /var/cache/apk \
    && ln -s /var/cache/apk /etc/apk/cache \
    && rm -rf /var/cache/apk/*

USER root
