#!/bin/bash

count=$(ls -A | wc -l | xargs)
not_guessed=true

function try_guess {
    echo 'Enter number of files in directory:'
    read guess
    guess=$(echo $guess | xargs) 
    if ! [[ $guess =~ ^[0-9]+$ ]] 
    then
        echo 'Your answer is not correct format'
    elif [[ $guess -gt count ]]
    then
        echo 'Your answer is greater than actual'
    elif [[ $guess -lt count ]] 
    then
        echo 'Your answer is less than actual'
    else
        echo 'Your answer is correct! Conrgats!'
        not_guessed=false
    fi
}

echo ' ### GUESSING GAME ### '
while $not_guessed ; do
    try_guess
done
