#!/bin/bash

alphabet_to_decimal() {
    declare -A alphabet=(
        ["A"]=65
        ["B"]=66
        ["C"]=67
        ["D"]=68
        ["E"]=69
        ["F"]=70
        ["G"]=71
        ["H"]=72
        ["I"]=73
        ["J"]=74
        ["K"]=75
        ["L"]=76
        ["M"]=77
        ["N"]=78
        ["O"]=79
        ["P"]=80
        ["Q"]=81
        ["R"]=82
        ["S"]=83
        ["T"]=84
        ["U"]=85
        ["V"]=86
        ["W"]=87
        ["X"]=88
        ["Y"]=89
        ["Z"]=90
    )

    if [ $# -eq 0 ]; then
        echo "Enter alphabetical letters (without spaces):"
        read -n 1 letters
    else
        letters=$@
    fi

    for letter in $(echo $letters | grep -o .); do
        decimal_value=${alphabet[$letter]}
        if [ -z "$decimal_value" ]; then
            echo "Invalid letter: $letter"
        else
            echo "Decimal value of $letter is $decimal_value"
        fi
    done
}

alphabet_to_decimal "$@"
