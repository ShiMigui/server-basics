#!/bin/bash

if [ $# -lt 1 ]; then
    echo "Usage: $0 <tool>"
    exit 1
fi

COMMAND=$1
shift
case $COMMAND in
"git")
    bash ./git.sh $0 $COMMAND "$@"
    ;;
"mirror")
    bash ./mirror.sh $0 $COMMAND "$@"
    ;;
*)
    bash ./source/execute_command.sh "$@"
    ;;
esac
