#!/bin/bash

exe3() {
    num_words=("one" "two" "three" "four" "five" "six" "seven" "eight" "nine" "ten")

    #check that we have enough arguments
    if [[ $# -lt 1 ]]; then
        echo "No arguments provided"
        exit
    fi

    #count the numbers
    for num in "$@"; do
        if ((num >= 1 && num <= 10)); then
            num_count["$num"]=$((num_count["$num"] + 1))
        fi
    done

    # print the accurences
    for num in "${!num_count[@]}"; do
        count="${num_count[$num]}"
        word="${num_words[$((num - 1))]}"
        echo "$word appeared $count times"
    done
}





