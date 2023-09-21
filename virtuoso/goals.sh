#!/bin/bash

# Initialize the string
strGoals="112,3335,445,56556565"

#Set comma as delimeter
IFS=','

# Read the split word into an array based on comma delimiter
read -a strarr<<< "$strGoals"

#Print each value of the array by using loop
for ((n=0;n<${#strarr[*]};n++))
do 
  bash execute.sh -t "$2" --goal_id "${strarr[n]}"
  echo "${strarr[n]}"
done
