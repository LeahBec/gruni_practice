#!/bin/bash

main() {
    
    #check that we have enough arguments
    if [[ $# -lt 1 ]]; then
        echo "No arguments provided"
        exit
    fi

    choice="$1"
    bash ./features-scripts/feature$choice.sh ${@:2}
}

main "$@"
