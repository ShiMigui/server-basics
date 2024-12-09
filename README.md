# Server Basics
This repository contains a set of shell scripts that I have created for my Arch Linux "server" (an old laptop I use as a server).

## Clone Remote Repository
**Script**: [clone-remote-repo](./clone-remote-repo.sh)  
**Used by**: Server

### What It Does
This script clones a GitHub repository as a bare repository into a specified directory on your local machine.

### Usage
```bash
./clone-remote-repo.sh <repository-name>
```

### Variables
- **URL**: The DNS URL for the GitHub repository. Default: `git@github.com:shimigui`
- **TARGET**: The directory where the repository will be cloned. Default: `$HOME/repos/bare/$1.git`

## Pull Mirror
**Script**: [pull-mirror](./pull-mirror.sh)  
**Used by**: Server

### What It Does
This script clones the bare repository (stored on the server) to a specified directory, creating a "mirror" repository. This mirror can be used with Docker or Docker Compose for server-side operations.

### Usage
```bash
./pull-mirror.sh <repository-name>
```

### Variables
- **BARE_DIR**: The directory where the bare repository is located. Default: `$HOME/repos/bare/$1.git`
- **MIRROR_DIR**: The directory where the mirror repository will be cloned. Default: `$HOME/repos/mirror/$1/`

## Clone Server Repository
**Script**: [clone-server-repo](./clone-server-repo.sh)  
**Used by**: PC

### What It Does
This script clones a repository from the server to your local machine.

### Usage
```bash
./clone-server-repo.sh <repository-name>
```

### Variables
- **URL**: The DNS URL or SSH address of the server. Default: `ssh://192.168.1.100`
- **TARGET**: The directory where the bare repository is located on the server. Default: `~/repos/bare/$REPO_NAME.git`
