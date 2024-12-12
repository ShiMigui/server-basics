#!/bin/bash

source "./source/config.sh"

source "./func/execute.sh"
source "./func/execute_in_wd.sh"
source "./func/usage.sh"

HOST=${1:-"<host>"}
TOOL=${2:-"<tool>"}
FEATURE=${3:-"<feature>"}

usage 3 "server.sh: $HOST $TOOL $FEATURE" $@
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
    execute $FEATURE
    ;;
*)
    usage 1 "Invalid tool: $TOOL"
    exit 1
    ;;
esac
