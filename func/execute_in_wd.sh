function execute_in_wd() {
    # if is not set, get the first argument
    if [ -z "$WORK_DIR" ]; then
        WORK_DIR=$1
        shift
    fi
    execute "cd $WORK_DIR && $@"
}
