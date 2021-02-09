#! /usr/bin/env #!/usr/bin/env bash
# File: guessinggame.#!/bin/sh

# Determine the number of files in the directory
number_files=$(find -maxdepth 1 -type f | wc -l)

# User input: guessing number
echo "Welcome to the guessing game. Please guess how many files are in the actual directory: "
read guessing

# Test if guessing is 'too high' OR 'too low'
while [[ $guessing -ne $number_files ]]
do
  if [[ $guessing -gt $number_files ]]
  then
    echo "Entered value is too high. Please try again:"
    read guessing
  else [[ $guessing -lt $number_files ]]
    echo "Entered value is too low. Please try again:"
    read guessing
  fi
done

# If guessed number is correct.
echo "Congratulations, you got it!!!"
