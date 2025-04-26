bash
#!/bin/bash

function play_game {
    local number=$(( RANDOM % 100 + 1 ))
    local guess=0
    local attempts=0

    echo "Guess the number between 1 and 100!"

    while [ $guess -ne $number ]; do
        read -p "Enter your guess: " guess
        attempts=$(( attempts + 1 ))

        if ! [[ $guess =~ ^[0-9]+$ ]]; then
            echo "Please enter a valid number."
            continue
        fi

        if [ $guess -lt $number ]; then
            echo "Too low!"
        elif [ $guess -gt $number ]; then
            echo "Too high!"
        else
            echo "Congratulations! You've guessed the number in $attempts attempts."
        fi
    done
}

play_game
