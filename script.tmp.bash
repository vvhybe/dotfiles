#!/usr/bin/env bash
#
# <script bin name>: <script desc>
#
# Author: @vvhybe
# Maintainer: @vvhybe
# License: GPL-3.0

readonly VERSION="v1.0.0"

# Dependencies
readonly DEPS=(
    # Add dependencies here, or leave empty if none
)

# Script Manual
usage() {
    cat <<EOF
Usage: ${0##*/} [OPTION]...

Description of the script.

Options:
  -h, --help      Show this help message and exit.
  -v, --version   Show the script version and exit.
  --deps          List all dependencies for this script (pipe-friendly).

Examples:
  ${0##*/} --option1
  ${0##*/} --option2

To install dependencies:
  ${0##*/} --deps | sudo pacman -S -
  ${0##*/} --deps | sudo apt install -
  ${0##*/} --deps | pip install -r /dev/stdin

Report bugs to: <your email or GitHub issues>
EOF
}

# Function to list dependencies (pipe-friendly)
list_deps() {
    if [[ ${#DEPS[@]} -eq 0 ]]; then
        echo "This script has no dependencies."
        return 0
    fi

    for dep in "${DEPS[@]}"; do
        echo "$dep"
    done
}

# Parse command-line arguments
while [[ "$1" =~ ^- && ! "$1" == "--" ]]; do
    case "$1" in
        -h | --help)
            usage
            exit 0
            ;;
        -v | --version)
            echo "${0##*/} $VERSION"
            exit 0
            ;;
        --deps)
            list_deps
            exit 0
            ;;
        *)
            echo "Unknown option: $1"
            usage
            exit 1
            ;;
    esac
    shift
done
if [[ "$1" == "--" ]]; then shift; fi

# Main script logic
<body of the script>
