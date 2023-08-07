#!/bin/bash
#source ./feature2.sh

separate_fields() {
  echo "I am in spperate func"
  local -a  text="$1"
  local separator="$2"
  echo "separator: $separator"
  echo "text: $text"
  local -a separated_array=()
  while IFS= read -r line; do
    # Split the line into fields based on the separator
    IFS="$separator" read -ra fields <<< "$line"
    # Append fields to the separated array
    separated_array+=("${fields[@]}")
  done <<< "$text"
  # Return the separated array
  echo "my separate is:"
  echo "${separated_array[@]}"
}

# Function to print a 2D array in symmetric format
print_symmetric_array() {
  echo "i am in print_symetric_array function!"
  local array=("$@")  # Get the array from command line arguments
  local rows=${#array[@]}
  local cols=${#array[0]}

  for ((i = 0; i < cols; i++)); do
    for ((j = 0; j < rows; j++)); do
      # Print the element at the current position
      echo -n "${array[$j]:$i:1} "
    done
    echo  # Move to the next line
  done
}

feature6 () {
  echo "I am in function 6"
  all_users_features=$(cat /etc/passwd)
  declare -a splitted_users=()
  splitted_users=$(separate_fields $all_users_features ' ')
  echo "splitted_users"
  echo "${splitted_users[@]}"
  array_length=${#split_users[@]}
  declare -a user_array=()
  for user in "${splitted_users[@]}"; do   # access each element of array

    echo "$user"

    user_details=$(separate_fields '$user' ':')

    for j in 1..7; do

        array[$i][$j]=$user_details[$j]

    done

  done
  print_symmetric_array $array
}


echo "hello"
feature6
