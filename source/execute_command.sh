#!/bin/bash

source "./source/config.sh"

function execute_command() {
    ssh -t $REMOTE_HOST "$@"
    if [ $? -ne 0 ]; then
        echo "Error: Command failed on remote host."
        exit 1
    fi
}
