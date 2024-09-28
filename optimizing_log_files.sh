# Optimizing a Script to Check Multiple Log Files for Errors
# This script efficiently checks multiple log files for specific error patterns and handles potential edge cases.
#!/bin/bash

# Function to check for errors in a log file
check_errors_in_log() {
    local logfile="$1"
    local pattern="$2"

    if [[ ! -f "$logfile" ]]; then
        echo "Log file $logfile does not exist."
        return 1  # Indicate failure
    fi

    # Search for the error pattern in the log file
    local count=$(grep -c "$pattern" "$logfile")
    if [[ $count -gt 0 ]]; then
        echo "Found $count errors in $logfile."
    else
        echo "No errors found in $logfile."
    fi
}

# Main script execution
log_files=("log1.txt" "log2.txt" "log3.txt")  # Add your log files here
error_pattern="ERROR"  # Define the error pattern to search for

# Loop through the log files and check for errors
for log in "${log_files[@]}"; do
    check_errors_in_log "$log" "$error_pattern"
done

echo "Log error check completed."
