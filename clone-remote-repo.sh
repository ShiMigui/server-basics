#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <repository-name>"
    exit 1
fi

URL="git@github.com:shimigui"
TARGET_DIR="$HOME/repos/bare/$1.git"

mkdir -p "$TARGET_DIR"

git clone --bare "$URL/$1" "$TARGET_DIR"

if [ $? -eq 0 ]; then
    echo "Bare repository cloned to $TARGET_DIR"
fi