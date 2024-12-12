#!/bin/bash

source "./tools/_repositories_init.sh"

case $FEATURE in
"push")
    execute_command "cd $BARE_DIR/$REPO_NAME && git push $@"
    ;;
"clone")
    execute_command "cd $BARE_DIR && git clone --bare $REPO_URL"
    ;;
*)
    execute_command "cd $BARE_DIR && git $@"
    ;;
esac
