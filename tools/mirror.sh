#!/bin/bash

source "./tools/_repositories_init.sh"

case $FEATURE in
"create")
    execute_command "cd $MIRROR_DIR && git clone $BARE_DIR/$REPO_NAME"
    ;;
"sync")
    origin=${@:-"origin main"}
    execute_command "cd $MIRROR_DIR/$REPO_NAME && git pull $origin"
    ;;
*)
    echo "Unknown command: $FEATURE"
    ;;
esac
