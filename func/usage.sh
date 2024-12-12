#!/bin/bash

function usage() {
    local expected_quantity=$1
    local message=$2
    if [ $# -lt $((expected_quantity + 2)) ]; then
        echo $message
        exit 1
    fi
}
