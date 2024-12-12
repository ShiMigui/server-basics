#!/bin/bash

source "./tools/_repositories_init.sh"

case $FEATURE in
"push")
    origin=${@:-"origin main"}
    execute_command "cd $BARE_DIR/$REPO_NAME && git push $origin"
    ;;
"clone")
    execute_command "cd $BARE_DIR && git clone --bare $REPO_URL $@"
    ;;
*)
    echo "Invalid feature: $FEATURE"
    exit 1
    ;;
esac
