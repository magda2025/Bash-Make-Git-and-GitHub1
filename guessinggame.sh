bash
#!/bin/bash

function count_files {
    echo $(ls -1 | wc -l)
}

function play_game {
    local file_count=$(count_files)
    local guess=0

    echo "Welcome to the Guessing Game!"
    echo "How many files are in the current directory?"

    while [ $guess -ne $file_count ]; do
        read -p "Enter your guess: " guess

        if ! [[ $guess =~ ^[0-9]+$ ]]; then
            echo "Invalid input. Please enter a number."
            continue
        fi

        if [ $guess -lt $file_count ]; then
            echo "Your guess is too low. Try again!"
        elif [ $guess -gt $file_count ]; then
            echo "Your guess is too high. Try again!"
        else
            echo "Congratulations! You guessed it right!"
        fi
    done
}

play_game

