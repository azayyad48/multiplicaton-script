#!/bin/bash

# Function to generate a full multiplication table (1 to 10)
generate_full_table() {
    local num=$1
    echo "Full Multiplication Table for $num (1 to 10):"
    for ((i = 1; i <= 10; i++)); do
        echo "$num x $i = $((num * i))"
    done
}

# Function to generate a partial multiplication table (custom range)
generate_partial_table() {
    local num=$1
    local start=$2
    local end=$3
    echo "Partial Multiplication Table for $num (from $start to $end):"
    for ((i = start; i <= end; i++)); do
        echo "$num x $i = $((num * i))"
    done
}

# Input validation for the number
read -p "Enter the number to generate its multiplication table: " number
while ! [[ "$number" =~ ^[0-9]+$ && "$number" -ge 1 ]]; do
    echo "Invalid input! Please enter a positive integer greater than or equal to 1."
    read -p "Enter the number to generate its multiplication table: " number
done

# Prompt user for full or partial table
echo "Do you want a full table (1 to 10) or a partial table?"
echo "1) Full Table"
echo "2) Partial Table"
read -p "Enter your choice (1 or 2): " choice

# Process user choice
if [[ "$choice" == "1" ]]; then
    # Generate full table
    generate_full_table "$number"
elif [[ "$choice" == "2" ]]; then
    # Prompt for range and validate input
    read -p "Enter the starting number for the table (1 to 10): " start
    while ! [[ "$start" =~ ^[0-9]+$ && "$start" -ge 1 && "$start" -le 10 ]]; do
        echo "Invalid input! Starting number must be between 1 and 10."
        read -p "Enter the starting number for the table (1 to 10): " start
    done

    read -p "Enter the ending number for the table (1 to 10): " end
    while ! [[ "$end" =~ ^[0-9]+$ && "$end" -ge 1 && "$end" -le 10 ]]; do
        echo "Invalid input! Ending number must be between 1 and 10."
        read -p "Enter the ending number for the table (1 to 10): " end
    done

    if [[ "$start" -gt "$end" ]]; then
        echo "Invalid range! The starting number ($start) is greater than the ending number ($end)."
        echo "Displaying the full multiplication table (1 to 10) for $number instead:"
        generate_full_table "$number"
    else
        # Generate partial table
        generate_partial_table "$number" "$start" "$end"
    fi
else
    echo "Invalid choice! Please run the script again and select either option 1 or 2."
fi
