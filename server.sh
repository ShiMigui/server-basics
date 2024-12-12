#!/bin/bash

source "./source/config.sh"
source "./source/execute_command.sh"
source "./func/usage.sh"

HOST=$1

TOOL=${2:-"<tool>"}
# Verify if has at least 2 variables
usage 2 "server.sh: $0 $TOOL <feature>" $@

case $TOOL in
"bare")
    source "./tools/bare.sh"
    ;;
"mirror")
    source "./tools/mirror.sh"
    ;;
*)
    echo "Warning: Unknown tool '$TOOL'"
    bash ./source/execute_command.sh "$@"
    ;;
esac
