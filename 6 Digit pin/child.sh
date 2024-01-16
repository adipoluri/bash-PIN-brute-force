#!/bin/bash
let a="$2*$1"
let b="$2+$a"

expected_output="Please enter your 6-digit pin:
Wrong secret!"

for (( i = $a; i <= $b; i++ ))
do
    password=$(printf "%06d" $i)
    printf "testing password: $password\n"

    program_output=$(echo "$password" | "./crackme")
    # Check if the output does not match the expected string
    if [[ "$program_output" != "$expected_output" ]]; then
        echo "$program_output $password" >> answer.txt
    fi
done