# Script to Compress Log Files and Move Them to an Archive Folder
#!/bin/bash

# Directory containing log files
LOG_DIR="/path/to/logs"
# Directory where compressed files will be moved
ARCHIVE_DIR="/path/to/archive"

# Create archive directory if it doesn't exist
mkdir -p "$ARCHIVE_DIR"

# Find and compress all .log files
for log_file in "$LOG_DIR"/*.log; do
    if [ -f "$log_file" ]; then
        # Compress the log file
        gzip "$log_file"
        echo "Compressed: $log_file"
        
        # Move the compressed file to the archive directory
        mv "${log_file}.gz" "$ARCHIVE_DIR/"
        echo "Moved to archive: ${log_file}.gz"
    fi
done

echo "All log files compressed and moved to $ARCHIVE_DIR."
