#!/bin/bash
# Process to monitor
PROCESS="nginx"

# Check if the process is running
if ! pgrep $PROCESS > /dev/null
then
  echo "$PROCESS is not running. Restarting the service..."
  # Restart the process
  systemctl start $PROCESS
  
  # Check if it started successfully
  if pgrep $PROCESS > /dev/null
  then
    echo "$PROCESS started successfully."
  else
    echo "Failed to start $PROCESS. Manual intervention needed!"
  fi
else
  echo "$PROCESS is running."
fi
