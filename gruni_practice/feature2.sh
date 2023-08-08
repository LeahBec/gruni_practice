#!/bin/bash
feature2() {
  if [[ $# -eq 2 ]]; then
    output=$(cat "$1" 2>&1)  # Capture both stdout and stderr to 'output'
    error_message="No such file or directory"
    if [[ $output == *"cat: "* && $output == *": $error_message"* ]]; then
       echo "File not found error"
    else
       separator="$2"
       IFS="$separator" read -ra ADDR <<< "$output"
       j=0
       for i in "${ADDR[@]}"; do
         echo "Item$((j++)): $i"
       done
    fi
  else
    echo "No mathced arguments"
  fi
}

