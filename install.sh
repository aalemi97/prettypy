#!/bin/bash

#  install.sh
#  Script to install prettypy tool.
#
#  Created by Alireza on 1/25/26.

set -e

function main() {
    echo "========================================="
    echo "  Welcome to PrettyPy Installer Tool!    "
    echo "========================================="
    echo
    current_directory=$(pwd)

    # Make script executable:
    echo "➤ Making prettypy executable..."
    echo
    prettypy="$current_directory/prettypy"
    if [[ ! -f "$prettypy" ]]; then
        echo "✗ Error no script found at $prettypy"
        exit 1
    fi
    chmod +x "$prettypy"
    echo "✓ Successfully made prettypy executable."
    echo

    # Make script system-wide available:
    bin="/usr/local/bin"
    echo "➤ Making prettypy system-wide available ..."
    echo
    sudo cp "$prettypy" "$bin"
    echo "✓ Successfully Installed prettypy!"
    echo "You can use prettypy -h to see available options!"
    echo
    echo "========================================="
}

main $@