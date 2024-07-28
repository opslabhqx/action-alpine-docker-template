# action-alpine-docker-template

Run GitHub Actions in Docker Alpine images.

[![Example Workflow](https://github.com/opslabhqx/action-alpine-docker-template/actions/workflows/example_workflow.yml/badge.svg)](https://github.com/opslabhqx/action-alpine-docker-template/actions/workflows/example_workflow.yml)
[![Docker Image for Bash](https://github.com/opslabhqx/action-alpine-docker-template/actions/workflows/docker_buildx_bash.yml/badge.svg)](https://github.com/opslabhqx/action-alpine-docker-template/actions/workflows/docker_buildx_bash.yml)
[![Docker Image for Go](https://github.com/opslabhqx/action-alpine-docker-template/actions/workflows/docker_buildx_go.yml/badge.svg)](https://github.com/opslabhqx/action-alpine-docker-template/actions/workflows/docker_buildx_go.yml)
[![Docker Image for Java](https://github.com/opslabhqx/action-alpine-docker-template/actions/workflows/docker_buildx_java.yml/badge.svg)](https://github.com/opslabhqx/action-alpine-docker-template/actions/workflows/docker_buildx_java.yml)
[![Docker Image for Node](https://github.com/opslabhqx/action-alpine-docker-template/actions/workflows/docker_buildx_node.yml/badge.svg)](https://github.com/opslabhqx/action-alpine-docker-template/actions/workflows/docker_buildx_node.yml)
[![Docker Image for Python](https://github.com/opslabhqx/action-alpine-docker-template/actions/workflows/docker_buildx_python.yml/badge.svg)](https://github.com/opslabhqx/action-alpine-docker-template/actions/workflows/docker_buildx_python.yml)
[![Docker Image for Rust](https://github.com/opslabhqx/action-alpine-docker-template/actions/workflows/docker_buildx_rust.yml/badge.svg)](https://github.com/opslabhqx/action-alpine-docker-template/actions/workflows/docker_buildx_rust.yml)

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
  uses: opslabhqx/action-alpine-docker-template/bash@main
```

#### Go Action

```yaml
- name: Checkout repository
  uses: actions/checkout@v4

- name: Go Action
  uses: opslabhqx/action-alpine-docker-template/go@main
```

#### Java Action

```yaml
- name: Checkout repository
  uses: actions/checkout@v4

- name: Java Action
  uses: opslabhqx/action-alpine-docker-template/java@main
```

#### Node Action

```yaml
- name: Checkout repository
  uses: actions/checkout@v4

- name: Node Action
  uses: opslabhqx/action-alpine-docker-template/node@main
```

#### Python Action

```yaml
- name: Checkout repository
  uses: actions/checkout@v4

- name: Python Action
  uses: opslabhqx/action-alpine-docker-template/python@main
```

#### Rust Action

```yaml
- name: Checkout repository
  uses: actions/checkout@v4

- name: Rust Action
  uses: opslabhqx/action-alpine-docker-template/rust@main
```

## Example Workflow

Below is an example workflow configuration that uses the actions provided in this repository. This workflow is triggered manually and runs the "Hello World" program in all supported languages.

Check out our example workflow [here](https://github.com/opslabhqx/action-alpine-docker-template/actions/workflows/example_workflow.yml).

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
        uses: opslabhqx/action-alpine-docker-template/bash@main

      - name: Go Action
        uses: opslabhqx/action-alpine-docker-template/go@main

      - name: Java Action
        uses: opslabhqx/action-alpine-docker-template/java@main

      - name: Node Action
        uses: opslabhqx/action-alpine-docker-template/node@main

      - name: Python Action
        uses: opslabhqx/action-alpine-docker-template/python@main

      - name: Rust Action
        uses: opslabhqx/action-alpine-docker-template/rust@main
```

## License

This repository is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.
