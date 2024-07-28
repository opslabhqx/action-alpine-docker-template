#!/usr/bin/env bash

# This script is specifically designed for the GitHub Action. You can make changes without tagging a new release.
# Running it outside of GitHub Actions may result in dependency issues.

set -o errexit -o pipefail

# Function to echo all GitHub environment variables
function github_env_vars() {
    echo "Echoing all GitHub environment variables:"
    echo "GITHUB_ACTION: ${GITHUB_ACTION}"
    echo "GITHUB_ACTION_REF: ${GITHUB_ACTION_REF}"
    echo "GITHUB_ACTION_REPOSITORY: ${GITHUB_ACTION_REPOSITORY}"
    echo "GITHUB_ACTOR: ${GITHUB_ACTOR}"
    echo "GITHUB_API_URL: ${GITHUB_API_URL}"
    echo "GITHUB_ENV: ${GITHUB_ENV}"
    echo "GITHUB_EVENT_NAME: ${GITHUB_EVENT_NAME}"
    echo "GITHUB_EVENT_PATH: ${GITHUB_EVENT_PATH}"
    echo "GITHUB_GRAPHQL_URL: ${GITHUB_GRAPHQL_URL}"
    echo "GITHUB_JOB: ${GITHUB_JOB}"
    echo "GITHUB_OUTPUT: ${GITHUB_OUTPUT}"
    echo "GITHUB_PATH: ${GITHUB_PATH}"
    echo "GITHUB_REF: ${GITHUB_REF}"
    echo "GITHUB_REF_NAME: ${GITHUB_REF_NAME}"
    echo "GITHUB_REF_PROTECTED: ${GITHUB_REF_PROTECTED}"
    echo "GITHUB_REF_TYPE: ${GITHUB_REF_TYPE}"
    echo "GITHUB_REPOSITORY: ${GITHUB_REPOSITORY}"
    echo "GITHUB_REPOSITORY_ID: ${GITHUB_REPOSITORY_ID}"
    echo "GITHUB_REPOSITORY_OWNER: ${GITHUB_REPOSITORY_OWNER}"
    echo "GITHUB_REPOSITORY_OWNER_ID: ${GITHUB_REPOSITORY_OWNER_ID}"
    echo "GITHUB_RETENTION_DAYS: ${GITHUB_RETENTION_DAYS}"
    echo "GITHUB_RUN_ATTEMPT: ${GITHUB_RUN_ATTEMPT}"
    echo "GITHUB_RUN_ID: ${GITHUB_RUN_ID}"
    echo "GITHUB_RUN_NUMBER: ${GITHUB_RUN_NUMBER}"
    echo "GITHUB_SERVER_URL: ${GITHUB_SERVER_URL}"
    echo "GITHUB_SHA: ${GITHUB_SHA}"
    echo "GITHUB_STEP_SUMMARY: ${GITHUB_STEP_SUMMARY}"
    echo "GITHUB_WORKFLOW: ${GITHUB_WORKFLOW}"
    echo "GITHUB_WORKFLOW_REF: ${GITHUB_WORKFLOW_REF}"
    echo "GITHUB_WORKFLOW_SHA: ${GITHUB_WORKFLOW_SHA}"
    echo "GITHUB_WORKSPACE: ${GITHUB_WORKSPACE}"
}

# Main function
function main() {
    echo "Running Bash Action"
    pwd
    ls -all
    github_env_vars
    echo "Hello World!"
}

if [ "$#" -eq 1 ]; then
    "$1"
else
    echo "Usage: $0 <function_name>" >&2
    exit 1
fi
