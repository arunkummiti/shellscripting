#!/bin/bash
# How would you catch and handle a specific signal (e.g., SIGINT) to clean up temporary files before exiting?
# Trap SIGINT (Ctrl+C) and clean up
trap 'echo "Caught SIGINT. Cleaning up..."; rm -f /tmp/tempfile; exit 1' SIGINT

# Example command creating a temporary file
touch /tmp/tempfile
echo "Processing... Press Ctrl+C to interrupt."

# Simulate a long-running process
sleep 60

# Normal exit
rm -f /tmp/tempfile
echo "Process completed successfully."
# Explanation:

# The trap command catches the SIGINT signal (sent when pressing Ctrl+C) and runs the specified commands.
# In this case, it cleans up by deleting the temporary file and then exits the script with an exit code of 1.
