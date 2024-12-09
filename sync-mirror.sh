#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <repository-name>"
    exit 1
fi

INPUT_DIR="$HOME/repos/bare/$1.git"
OUTPUT_DIR="$HOME/repos/mirror/$1/"

if [ ! -d "$INPUT_DIR" ]; then
    echo "Error: Bare repository $INPUT_DIR does not exist."
    exit 1
fi

if [ -d "$OUTPUT_DIR" ]; then
    echo "Updating existing mirror repository at $OUTPUT_DIR"
    cd "$OUTPUT_DIR" && git pull origin main
else
    echo "Cloning bare repository to $OUTPUT_DIR"
    git clone "$INPUT_DIR" "$OUTPUT_DIR"
fi

echo "Mirror repository synchronized to $OUTPUT_DIR"
