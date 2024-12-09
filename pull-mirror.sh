#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <repository-name>"
    exit 1
fi

BARE_DIR="$HOME/repos/bare/$1.git"
MIRROR_DIR="$HOME/repos/mirror/$1/"

if [ ! -d "$BARE_DIR" ]; then
    echo "Error: Bare repository $BARE_DIR does not exist."
    exit 1
fi

if [ -d "$MIRROR_DIR" ]; then
    echo "Updating existing mirror repository at $MIRROR_DIR"
    cd "$MIRROR_DIR" && git pull origin main
else
    echo "Cloning bare repository to $MIRROR_DIR"
    git clone "$BARE_DIR" "$MIRROR_DIR"
fi

echo "Mirror repository synchronized to $MIRROR_DIR"
