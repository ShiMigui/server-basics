#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <repository-name> [server] [repo-path]"
    exit 1
fi

REPO_NAME=$1
SERVER="ssh://192.168.1.100"

git clone "$SERVER:~/repos/bare/$REPO_NAME.git"