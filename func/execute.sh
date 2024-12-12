function execute() {
    ssh -t $HOST "$@"
    if [ $? -ne 0 ]; then
        echo "Error: Command failed on remote host."
        exit 1
    fi
}
