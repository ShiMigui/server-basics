# Server Basics

## Description
A tool for executing commands over SSH to manage repositories, including creating and pushing bare repositories, as well as cloning and pulling "mirror" repositories.

### Terminology
- **Mirror**: A Git repository with a working tree. This can be used alongside tools like Docker or Docker Compose.
- **Server-side**: Refers to the service accessed through the SSH connection.

### Get Started
To start using this tool, follow these steps:

1. **Clone the repository**:
   First, clone this repository to your local machine:
   ```bash
   git clone https://www.github.com:shimigui/server-tools.git ~/.server-tools
   ```

2. **Set up an alias**:
   Add an alias to your `.zshrc` or `.bashrc` file. Replace `SSH_ADDRESS` with the actual address of your server, and optionally change `server` to a name of your choice:
   ```bash
   alias server='bash ~/.server-tools/main.sh SSH_ADDRESS'
   ```
   After adding this alias, reload your shell or run `source ~/.zshrc` (or `source ~/.bashrc`) to apply the changes.

Once you’ve completed these steps, you can use the `server` command to manage your repositories on the remote server.

## Usage
This tool is divided into two layers: `<tool>` and `<tool> <feature>`.

### Tools
Commands to manage operations on the server-side.  
| TOOL     | DESCRIPTION                                                | WORK DIR      |
| -------- | ---------------------------------------------------------- | ------------- |
| `bare`   | Manages bare repositories located in `$BARE_DIR`.          | `$BARE_DIR`   |
| `mirror` | Manages repositories with a working tree in `$MIRROR_DIR`. | `$MIRROR_DIR` |
| `-r`     | Reflects commands to the server-side.                      | Default       |

### Tool Features
Features extend the functionality of a tool.  
| TOOL     | FEATURE | DESCRIPTION                                                       |
| -------- | ------- | ----------------------------------------------------------------- |
| `bare`   | `clone` | Clones a bare repository into `$BARE_DIR`.                        |
| `bare`   | `push`  | Pushes a bare repository in `$BARE_DIR` to its origin.            |
| `mirror` | `clone` | Clones a repository from `$BARE_DIR` into `$MIRROR_DIR`.          |
| `mirror` | `pull`  | Pulls updates into a repository in `$MIRROR_DIR` from its origin. |