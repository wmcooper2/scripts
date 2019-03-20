# Machine Setup Program
This is a CLI tool.

### Purpose
To maintain a consistency across all workstations and devices.

### Operation
In the program's root dir, type `./run`.

### Developer Notes
This program:
    * Copies files over ssh
    * Replaces `.vimrc` and `.bash_profile` in the home dir
    * Fetches (updates/syncs) all git repositories
    * Creates a command in usr/local/bin
