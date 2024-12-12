#!/bin/bash

source "./source/config.sh"
source "./source/execute_command.sh"

HOST=$1

TOOL=${2:-"<tool>"}
if [ $# -lt 2 ]; then
    echo "Usage: $0 $TOOL <feature>"
    exit 1
fi

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
