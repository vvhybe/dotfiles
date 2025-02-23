#!/usr/bin/env bash
#
# <script bin name>: <script desc>
#
# Author: @vvhybe
# Maintainer: @vvhybe
# License: GPL-3.0

readonly VERSION="v1.0.0"

# Script Manual
usage() {
    cat <<EOF
Usage: ${0##*/} [OPTION]...

Description of the script.

Options:
  -h, --help      Show this help message and exit.
  -v, --version   Show the script version and exit.
  <other options> Description of other options.

Examples:
  ${0##*/} --option1
  ${0##*/} --option2

Report bugs to: <your email or GitHub issues>
EOF
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
