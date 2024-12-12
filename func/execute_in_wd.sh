function execute_in_wd() {
    WORK_DIR=$1
    shift
    execute "cd $WORK_DIR && $@"
}
