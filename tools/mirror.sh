#!/bin/bash

source "./source/config.sh"
source "./source/execute_command.sh"
source "./tools/_repositories_init.sh"

case $COMMAND in
"create")
    execute_command "cd $MIRROR_DIR && git clone $BARE_DIR/$REPO_NAME"
    ;;
"sync")
    local origin="origin main"

    if [ $# -gt 1 ]; then
        origin="$@"
    fi
    execute_command "cd $MIRROR_DIR/$REPO_NAME && git pull $origin"
    ;;
*)
    echo "Unknown command: $COMMAND"
    ;;
esac
