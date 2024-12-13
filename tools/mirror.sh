source "$SCRIPT_DIR/tools/_repositories_init.sh"

case $FEATURE in
"pull")
    origin=${@:-"origin main"}
    execute_in_wd "git --git-dir=./$REPO_NAME pull $origin"
    ;;
"clone")
    execute_in_wd "git clone $BARE_DIR/$REPO_NAME $@"
    ;;
*)
    echo "Invalid feature: $FEATURE"
    exit 1
    ;;
esac
