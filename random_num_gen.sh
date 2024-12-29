#!/bin/bash

# validate input
if [[ $# -ne 1 ]] || [[ ! "$1" =~ ^[0-9]{5}$ ]]; then
  echo "Usage: $0 <5-digit-number>"
  exit 1
fi

#store the input

input=$1

#generate a random index

random_index=$((RANDOM % 5))

#slice the input using the random index so you get four digit nums from the input
result="${input:0:$random_index}${input:$((random_index + 1))}"

echo $result
