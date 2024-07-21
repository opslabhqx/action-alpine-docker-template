# syntax=docker/dockerfile:1

# renovate: datasource=docker depName=alpine
ARG ALPINE_VERSION=3.20.1
# renovate: datasource=docker depName=python
ARG PYTHON_VERSION=3.8

FROM alpine:${ALPINE_VERSION} AS base

# Base image for the final stage
RUN apk add --no-cache bash git curl python3

FROM python:${PYTHON_VERSION}-alpine AS build

WORKDIR /app

COPY requirements.txt .
RUN python3 -m venv /venv \
    && . /venv/bin/activate \
    && pip install --no-cache-dir -r requirements.txt

COPY action.py .

FROM base

WORKDIR /app

COPY --from=build /venv /venv
COPY --from=build /app/action.py .

ENV PATH="/venv/bin:$PATH"

# Clear and enable Alpine caching
RUN mkdir -p /var/cache/apk \
    && ln -s /var/cache/apk /etc/apk/cache \
    && rm -rf /var/cache/apk/*

USER root
