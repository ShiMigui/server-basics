#!/bin/bash

if [ $# -lt 1 ]; then
    echo "Usage: $0 <tool> <command>"
    exit 1
fi

COMMAND=$1
shift
case $COMMAND in
"git")
    bash ./tools/git.sh $0 $COMMAND "$@"
    ;;
"mirror")
    bash ./tools/mirror.sh $0 $COMMAND "$@"
    ;;
*)
    echo "Warning: Unknown command '$COMMAND'"
    bash ./source/execute_command.sh "$@"
    ;;
esac
