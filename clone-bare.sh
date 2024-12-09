#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <repository-name>"
    exit 1
fi

TARGET_DIR=~/repos/bare

mkdir -p "$TARGET_DIR"

git clone --bare git@github.com:shimigui/"$1" "$TARGET_DIR/$1.git"

echo "Bare repository cloned to $TARGET_DIR/$1.git"
