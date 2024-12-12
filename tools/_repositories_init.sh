#!/bin/bash

FEATURE=${3:-"<feature>"}
REPO_URL=${4:-"<repository>"}
if [ $# -lt 4 ]; then
    echo "Usage: $0 $TOOL $FEATURE $REPO_URL [...args]"
    exit 1
fi

REPO_NAME=$(basename "$REPO_URL" .git)
shift 4