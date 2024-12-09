#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <repository-name>"
    exit 1
fi

REPO_NAME=$1
git clone "server:~/repos/bare/${REPO_NAME}.git"
