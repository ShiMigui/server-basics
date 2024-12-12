#!/bin/bash

FEATURE=${3:-"<feature>"}
REPO_URL=${4:-"<repository>"}
# Verify if has at least 4 variables
usage 4 "_repositories_init: $0 $TOOL $FEATURE $REPO_URL [...args]" $@

REPO_NAME=$(basename "$REPO_URL" .git)
shift 4