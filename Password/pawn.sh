#!/bin/bash
expected_output="Please enter your password:
Wrong secret!"

while read p; do
    printf "testing password: $p\n"
    program_output=$(echo "$p" | "./crackme")
    # Check if the output does not match the expected string
    if [[ "$program_output" != "$expected_output" ]]; then
        echo "$program_output $p" >> answer.txt
    fi
done <passwords.txt