#!/bin/bash

feature5() {
    rows=$(($RANDOM % 10+ 1))
    columns=$(($RANDOM % 10 +1))

    #init the matrix
    declare -a matrix
    for ((i = 0; i < (($columns*$rows)); i++)); do
        matrix["$i"]=$(( RANDOM % 100))
    done

    #print the matrix
    for ((j = 0; j < $rows; j++)); do
        for ((i = 0; i < $columns; i++)); do
            echo -n "${matrix["$(($columns * $j + $i))"]}"$'\t'  
        done
        echo
    done
}

feature5 "$@"