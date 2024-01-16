#!/bin/bash
expected_output="Invalid password!"
email="Shannamotionless@sfr.fr"

while read p; do
    printf "testing passwords: $p\n"
    program_output=$(./crackme $email $p)
    # Check if the output does not match the expected string
    if [[ "$program_output" != "$expected_output" ]]; then
        echo "$program_output $e $p" >> answer.txt
    fi
done <passwords.txt