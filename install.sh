#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

stow .
# Reload shell once installed
echo "[+] Reloading shell..."
exec $SHELL -l
