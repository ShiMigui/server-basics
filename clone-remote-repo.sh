#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <repository-name>"
    exit 1
fi

URL="git@github.com:shimigui"
TARGET="$HOME/repos/bare/$1.git"

mkdir -p "$TARGET"

git clone --bare "$URL/$1" "$TARGET"

if [ $? -eq 0 ]; then
    echo "Bare repository cloned to $TARGET"
fi