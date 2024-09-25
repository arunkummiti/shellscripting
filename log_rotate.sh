#!/bin/bash
# Log directory
LOG_DIR="/var/log/myapp/"
# Number of days after which logs should be rotated
DAYS=7

# Find all log files older than specified days and compress them
find $LOG_DIR -name "*.log" -type f -mtime +$DAYS -exec gzip {} \;

# Optional: Delete logs older than 30 days
find $LOG_DIR -name "*.gz" -type f -mtime +30 -exec rm {} \;
