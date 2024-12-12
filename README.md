# Server Basics

## Description
A tool for executing commands over SSH to manage repositories, including creating and pushing bare repositories, as well as cloning and pulling "mirror" repositories.

### Terminology
- **Mirror**: A Git repository with a working tree. This can be used alongside tools like Docker or Docker Compose.
- **Server-side**: Refers to the service accessed through the SSH connection.

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