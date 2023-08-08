#!/bin/bash

# Function to print a 2D array in symmetric format
print_symmetric_array() {
  local array1=("$1")  # Get the array 
  local rows=("$2")
  local cols=7
  for ((i = 0; i < $rows; i++)); do
    for ((j = 0; j < $cols; j++)); do
      # Print the element at the current position
      printf "%s\t" "${array[$i,$j]}"
    done
    echo  # Move to the next line
  done
}

feature6 () {
  all_users_features=$(grep 'bin/bash' /etc/passwd)
  all_users_count=$(grep -c 'bin/bash' /etc/passwd)
  declare -A array
  row=0
  column=0


  for user in $all_users_features[@]; do   # access each element of array
  IFS=":" read -ra single_user <<< "$user"
    for detail in "${single_user[@]}"; do
       array[$row,$((column%7))]="$detail"
       ((column++))
       done
   ((row++)) 
  done

  print_symmetric_array "$array" "$all_users_count"
}


feature6
