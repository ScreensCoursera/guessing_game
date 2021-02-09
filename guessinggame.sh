#! /usr/bin/env #!/usr/bin/env bash
# File: guessinggame.#!/bin/sh

# Determine the number of files in the directory
number_files=$(find -maxdepth 1 -type f | wc -l)

# User input: guessing number
echo "Welcome to the guessing game. Please guess how many files are in the actual directory: "
read guessing #Variable für Eingabe definieren

# Test if guessing is 'too high' OR 'too low' OR matching
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

# Wie komme ich in diesen Teil der Schleife???
echo "Congratulations, you got it!!!"
