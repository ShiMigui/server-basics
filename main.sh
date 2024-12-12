#!/bin/bash

source "./source/config.sh"

source "./func/execute_command.sh"
source "./func/usage.sh"

HOST=${1:-"<host>"}
TOOL=${2:-"<tool>"}
FEATURE=${3:-"<feature>"}

usage 3 "server.sh: $0 $HOST $TOOL $FEATURE ...args" $@
shift 3

case $TOOL in
"bare")
    source "./tools/bare.sh"
    ;;
"mirror")
    source "./tools/mirror.sh"
    ;;
"-r")
    echo "Reflecting command to server: $FEATURE"
    execute_command $FEATURE
    ;;
*)
    usage 1 "Invalid tool: $TOOL"
    exit 1
    ;;
esac
