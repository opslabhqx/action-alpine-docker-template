#!/usr/bin/env bash

# This script is specifically designed for the GitHub Action.
# Running it outside of GitHub Actions may result in dependency issues. Use at your own risk.

set -o errexit -o pipefail

# GitHub Action Layer
function main() {
    echo "Running Java Action"
    pwd
    ls -all
    cd /app
    java Action
}

if [ "$#" -eq 1 ]; then
    "$1"
else
    echo "Usage: $0 <function_name>" >&2
    exit 1
fi
