#!/bin/bash

logfile="/var/log/script.log"

log() {
  echo "$(date +'%Y-%m-%d %H:%M:%S') - $1" >> $logfile
}

# Command 1
if mkdir /some/directory; then
  log "Successfully created directory."
else
  log "Failed to create directory."
  exit 1
fi

# Command 2
if cp /some/file /destination/; then
  log "Successfully copied file."
else
  log "Failed to copy file."
  exit 1
fi

# Command 3
if rm /some/directory; then
  log "Successfully removed directory."
else
  log "Failed to remove directory."
  exit 1
fi

echo "Script completed successfully."
# Explanation:

# The if checks whether each command succeeds, and logs success or failure using the log function.
# If a command fails, the script logs the failure and exits immediately with exit 1.