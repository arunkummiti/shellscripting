# Below is a comprehensive Bash script that includes various conditional tests for files, strings, and numbers.
# The script checks the existence and properties of files, evaluates string conditions, 
# and performs numerical comparisons, providing clear output for each condition.
#!/bin/bash

# Define variables for demonstration
file_to_check="file.txt"
directory_to_check="mydir"
mystring=""
num1=10
num2=20

# File tests
echo "Checking file tests..."

# Check if file exists and is a regular file
if [ -f "$file_to_check" ]; then
    echo "$file_to_check is a regular file."
else
    echo "$file_to_check does not exist or is not a regular file."
fi

# Check if directory exists
if [ -d "$directory_to_check" ]; then
    echo "$directory_to_check exists and is a directory."
else
    echo "$directory_to_check does not exist."
fi

# Check if file exists (any type)
if [ -e "$file_to_check" ]; then
    echo "$file_to_check exists."
else
    echo "$file_to_check does not exist."
fi

# Check if file is not empty
if [ -s "$file_to_check" ]; then
    echo "$file_to_check exists and is not empty."
else
    echo "$file_to_check is either empty or does not exist."
fi

# Check if file is readable
if [ -r "$file_to_check" ]; then
    echo "$file_to_check is readable."
else
    echo "$file_to_check is not readable."
fi

# Check if file is writable
if [ -w "$file_to_check" ]; then
    echo "$file_to_check is writable."
else
    echo "$file_to_check is not writable."
fi

# Check if file is executable
if [ -x "$file_to_check" ]; then
    echo "$file_to_check is executable."
else
    echo "$file_to_check is not executable."
fi

# String tests
echo "Checking string tests..."

# Check if string is empty
if [ -z "$mystring" ]; then
    echo "mystring is empty."
else
    echo "mystring is not empty."
fi

# Check if string is not empty
if [ -n "$mystring" ]; then
    echo "mystring is not empty."
else
    echo "mystring is empty."
fi

# Example strings for comparison
string1="Hello"
string2="World"

# String comparison
if [ "$string1" = "$string2" ]; then
    echo "The strings are equal."
else
    echo "The strings are not equal."
fi

# Numerical tests
echo "Checking numerical tests..."

# Compare numbers
if [ "$num1" -gt "$num2" ]; then
    echo "$num1 is greater than $num2."
elif [ "$num1" -lt "$num2" ]; then
    echo "$num1 is less than $num2."
else
    echo "$num1 is equal to $num2."
fi

# Exit the script
echo "All checks completed."
