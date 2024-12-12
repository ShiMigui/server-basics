#!/bin/bash

source "./source/config.sh"
source "./source/execute_command.sh"
source "./_repositories_init.sh"

case $COMMAND in
"push")
    execute_command "cd $BARE_DIR/$REPO_NAME && git push $@"
    ;;
"clone")
    execute_command "cd $BARE_DIR && git clone --bare $REPO_URL"
    ;;
*)
    execute_command "git $@"
    ;;
esac
