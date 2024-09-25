#!/bin/bash

# Function to check disk space
check_disk_space() {
  available_space=$(df / | tail -1 | awk '{print $4}')
  if [ $available_space -lt 100000 ]; then
    echo "Insufficient disk space."
    return 2  # Custom exit code for disk space issue
  fi
}

# Example of calling the function and handling its exit code
check_disk_space
if [ $? -eq 2 ]; then
  echo "Exiting due to disk space issues."
  exit 2
fi

echo "Disk space check passed. Continuing..."

# Explanation:

# return 2 sets a custom exit code when there is insufficient disk space.
# The script checks the exit status ($?) of the function and exits with the appropriate code if there’s an issue.
