#!/bin/bash

REPO_URL=${1:-"<repository>"}

usage 1 "_repositories_init: $0 $TOOL $FEATURE $REPO_URL [...args]" $@
shift 1

REPO_NAME=$(basename "$REPO_URL")