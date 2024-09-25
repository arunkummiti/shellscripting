#!/bin/bash
# Write a script that retries a command 3 times if it fails.
# Retry count
RETRIES=3
# Counter
COUNT=0

# Function to perform the task (e.g., downloading a file)
perform_task() {
  curl -O https://error
}

# Retry logic
until perform_task; do
  COUNT=$((COUNT+1))
  echo "Attempt $COUNT failed."
  
  if [ $COUNT -ge $RETRIES ]; then
    echo "Failed after $RETRIES attempts. Exiting..."
    exit 1
  fi
  
  echo "Retrying in 5 seconds..."
  sleep 5
done

echo "Task completed successfully."

# Explanation:

# The script retries the task up to 3 times if it fails.
# The until loop runs until the command succeeds (returns a zero exit code). On failure, it increments the retry counter, waits for 5 seconds, and tries again.