# Machine Setup Program
This is a collection of simple scripts.

### Purpose
To maintain a consistency across all workstations and devices with my preferred settings.

### Operation
In the program's root dir, run an executable with `./executable`.

### Developer Notes
This program:
  * Copies files over ssh, from the src machine's $HOME
  * Replaces `.vimrc` and `.bash_profile` in $HOME
  * Recursively copies `.vim/` to $HOME
