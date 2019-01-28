#!/usr/bin/env bash

function check_guess {
  if [[ $1 -gt $2 ]]
  then
    echo "Too high! Try again."
  elif [[ $1 -lt $2 ]]
  then
    echo "Too low! Try again."
  elif [[ $1 -eq $2 ]]
  then
    echo Congratulations\! You guessed correctly\! You have $1 files and directories in your working directory.
  fi
}

function main {
  local inp=0
  local result=0
  local correct_guess=$(ls -l | wc -l)
  while [[ ! $inp -eq $correct_guess ]]
  do
    echo "Guess - how many files and directories are in your working directory?"
    read inp
    check_guess $inp $correct_guess
  done
}

main
