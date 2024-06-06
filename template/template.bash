#!/bin/bash

# Function to display help
display_help() {
    echo "Usage: $0 [option...] " >&2
    echo
    echo "   -p, --project    Set the project name"
    echo "   -h, --help       Display help"
    echo
    exit 1
}

while getopts ":p:" opt; do
    case $opt in
        p)
            params_name=$OPTARG
            echo "Params name: $params_name"
            ;;
        h|\?)
            display_help
            ;;
    esac
done