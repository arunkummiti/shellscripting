#!/bin/bash

# Function to check if a number is prime
is_prime() {
    local num=$1
    if [ "$num" -le 1 ]; then
        return 1
    fi
    for ((i = 2; i * i <= num; i++)); do
        if ((num % i == 0)); then
            return 1
        fi
    done
    return 0
}

# Main script
read -p "Enter the upper limit: " upper_limit

echo "Prime numbers up to $upper_limit are:"
for ((num = 2; num <= upper_limit; num++)); do
    is_prime $num
    if [ $? -eq 0 ]; then
        echo $num
    fi
done
