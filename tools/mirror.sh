source "./tools/_repositories_init.sh"

case $FEATURE in
"pull")
    origin=${@:-"origin main"}
    execute_in_wd "$MIRROR_DIR" "git --git-dir=./$REPO_NAME/.git pull $origin"
    ;;
"clone")
    execute_in_wd "$MIRROR_DIR" "git clone $BARE_DIR/$REPO_NAME $@"
    ;;
*)
    echo "Invalid feature: $FEATURE"
    exit 1
    ;;
esac
