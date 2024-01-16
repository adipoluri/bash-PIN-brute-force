#!/bin/bash
expected_output="Invalid email!"

while read e; do
    printf "testing email: $e\n"
    program_output=$(./crackme $e $e)
    # Check if the output does not match the expected string
    if [[ "$program_output" != "$expected_output" ]]; then
        echo "$program_output $e" >> answer.txt
        #     echo "$program_output $1 $p" >> answer.txt
        # if [[ "$program_output" != "$expected_output_password" ]]; then
        #     echo "$program_output $1 $p" >> answer.txt
        # fi
    fi
done <emails.txt