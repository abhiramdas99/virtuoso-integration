#!/bin/bash
set -eou pipefail

# Initialize the string
strGoals="133301,113748,113747"

#Set comma as delimeter
IFS=','

# Read the split word into an array based on comma delimiter
read -a strarr<<< "$strGoals"

#Print each value of the array by using loop
for ((n=0;n<${#strarr[*]};n++))
do 
  #echo "$1"
  #echo "${strarr[n]}"
  bash virtuoso/execute.sh -t "$1" --goal_id "${strarr[n]}" 
done
