#!/bin/bash

REMOTE_HOST="server"

MIRROR_DIR="~/repos/mirror"
BARE_DIR="~/repos/bare"

function execute_command() {
    ssh -t $REMOTE_HOST "$@"
    if [ $? -ne 0 ]; then
        echo "Error: Command failed on remote host."
        exit 1
    fi
}

function push() {
    if [ $# -eq 0 ]; then
        echo "Usage: $0 push <repository-name> [git-push-options]"
        exit 1
    fi

    local repo_name="$1"
    shift

    execute_command "cd $BARE_DIR/$repo_name && git push $@"
}

function clone() {
    if [ $# -eq 0 ]; then
        echo "Usage: $0 clone <repository-url>"
        exit 1
    fi

    local repo_url="$1"
    local repo_name=$(basename "$repo_url" .git)

    execute_command "git clone --bare $repo_url $BARE_DIR/$repo_name"
}

function create_mirror() {
    if [ $# -eq 0 ]; then
        echo "Usage: $0 create_mirror <repository-name>"
        exit 1
    fi

    local repo_name="$1"
    shift

    execute_command "cd $MIRROR_DIR && git clone $BARE_DIR/$repo_name"
}

function sync_mirror() {
    if [ $# -eq 0 ]; then
        echo "Usage: $0 sync_mirror <repository-name>"
        exit 1
    fi

    local repo_name="$1"
    shift

    local origin="origin main"

    if [ $# -gt 1 ]; then
        origin="$@"
    fi

    execute_command "cd $MIRROR_DIR/$repo_name && git pull $origin"
}

case "$1" in
"clone")
    clone "$2"
    ;;
"push")
    push "$2 $@"
    ;;
"create_mirror")
    create_mirror "$2"
    ;;
"sync_mirror")
    sync_mirror "$2"
    ;;
*)
    execute_command "$@"
    ;;
esac
