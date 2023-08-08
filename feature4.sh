#!/bin/bash

alphabet_to_decimal() {
    

    if [ $# -eq 0 ]; then

        echo "Enter alphabetical letters:"
        read letters

    else
        letters=$@
    fi

    for letter in $(echo $letters | grep -o .); do
        re='[a-zA-Z]'
	if [[ $letter =~ $re ]];  then
	        printf %d\\n \'$letter
	fi

	
    done
}

alphabet_to_decimal "$@"
