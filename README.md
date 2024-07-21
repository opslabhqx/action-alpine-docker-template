# docker-alpine-action-template

Run GitHub Actions in Docker Alpine images.

[![Docker Build- bash](https://github.com/opslabhqx/docker-alpine-action-template/actions/workflows/docker_buildx_bash.yml/badge.svg)](https://github.com/opslabhqx/docker-alpine-action-template/actions/workflows/docker_buildx_bash.yml)
[![Docker Build- go](https://github.com/opslabhqx/docker-alpine-action-template/actions/workflows/docker_buildx_go.yml/badge.svg)](https://github.com/opslabhqx/docker-alpine-action-template/actions/workflows/docker_buildx_go.yml)
[![Docker Build- java](https://github.com/opslabhqx/docker-alpine-action-template/actions/workflows/docker_buildx_java.yml/badge.svg)](https://github.com/opslabhqx/docker-alpine-action-template/actions/workflows/docker_buildx_java.yml)
[![Docker Build- node](https://github.com/opslabhqx/docker-alpine-action-template/actions/workflows/docker_buildx_node.yml/badge.svg)](https://github.com/opslabhqx/docker-alpine-action-template/actions/workflows/docker_buildx_node.yml)
[![Docker Build- python](https://github.com/opslabhqx/docker-alpine-action-template/actions/workflows/docker_buildx_python.yml/badge.svg)](https://github.com/opslabhqx/docker-alpine-action-template/actions/workflows/docker_buildx_python.yml)
[![Docker Build- rust](https://github.com/opslabhqx/docker-alpine-action-template/actions/workflows/docker_buildx_rust.yml/badge.svg)](https://github.com/opslabhqx/docker-alpine-action-template/actions/workflows/docker_buildx_rust.yml)

## Getting Started

### Language Supported

- Bash
- Go
- Java
- Node.js
- Python
- Rust

### Usage

Each action in this repository is built using a Docker container based on Alpine Linux, ensuring a lightweight and consistent environment across different languages. This setup simplifies dependency management and enhances security by leveraging Alpine's minimalistic nature.

#### Bash Action

```yaml
- name: Checkout repository
  uses: actions/checkout@v4

- name: Bash Action
  uses: opslabhqx/docker-alpine-action-template/bash@main
```

#### Go Action

```yaml
- name: Checkout repository
  uses: actions/checkout@v4

- name: Go Action
  uses: opslabhqx/docker-alpine-action-template/go@main
```

#### Java Action

```yaml
- name: Checkout repository
  uses: actions/checkout@v4

- name: Java Action
  uses: opslabhqx/docker-alpine-action-template/java@main
```

#### Node Action

```yaml
- name: Checkout repository
  uses: actions/checkout@v4

- name: Node Action
  uses: opslabhqx/docker-alpine-action-template/node@main
```

#### Python Action

```yaml
- name: Checkout repository
  uses: actions/checkout@v4

- name: Python Action
  uses: opslabhqx/docker-alpine-action-template/python@main
```

#### Rust Action

```yaml
- name: Checkout repository
  uses: actions/checkout@v4

- name: Rust Action
  uses: opslabhqx/docker-alpine-action-template/rust@main
```

## Example Workflow

Below is an example workflow configuration that uses the actions provided in this repository. This workflow is triggered manually and runs the "Hello World" program in all supported languages.

```yaml
---
name: Test-Workflow

on:
  workflow_dispatch:

jobs:
  test:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout repository
        uses: actions/checkout@v4

      - name: Bash Action
        uses: opslabhqx/docker-alpine-action-template/bash@main

      - name: Go Action
        uses: opslabhqx/docker-alpine-action-template/go@main

      - name: Java Action
        uses: opslabhqx/docker-alpine-action-template/java@main

      - name: Node Action
        uses: opslabhqx/docker-alpine-action-template/node@main

      - name: Python Action
        uses: opslabhqx/docker-alpine-action-template/python@main

      - name: Rust Action
        uses: opslabhqx/docker-alpine-action-template/rust@main
```

## License

This repository is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.