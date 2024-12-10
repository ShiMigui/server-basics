#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <repository-name>"
    exit 1
fi

REPO_NAME=$1
SERVER=miguel@192.168.1.100
TARGET=/home/miguel/repos/bare/$REPO_NAME.git

git clone "$SERVER:$TARGET"