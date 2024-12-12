#!/bin/bash

ROOT="$1 $2"
shift 2

COMMAND=${1:-"<command>"}
if [ $# -lt 2 ]; then
    echo "Usage: $ROOT mirror $COMMAND <repository-name|repository-url> [...args]"
    exit 1
fi
shift

REPO_URL=$1
REPO_NAME=$(basename "$REPO_URL" .git)
shift
