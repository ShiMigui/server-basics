source "./tools/_repositories_init.sh"

case $FEATURE in
"push")
    origin=${@:-"origin main"}
    execute_in_wd "$BARE_DIR" "git --git-dir=$REPO_NAME push $origin"
    ;;
"clone")
    execute_in_wd "$BARE_DIR" "git clone --bare $REPO_URL $@"
    ;;
*)
    echo "Invalid feature: $FEATURE"
    exit 1
    ;;
esac
