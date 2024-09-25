#!/bin/bash
# Directory to back up
SOURCE_DIR="/path/to/directory"
# Remote backup location
REMOTE_USER="user"
REMOTE_SERVER="backup.example.com"
REMOTE_DIR="/backups/myapp/"
# Date format for backup file name
DATE=$(date +"%Y-%m-%d")
# Backup file name
BACKUP_FILE="backup-$DATE.tar.gz"

# Create a compressed tarball of the directory
tar -czf /tmp/$BACKUP_FILE -C $SOURCE_DIR .

# Copy the backup file to the remote server
scp /tmp/$BACKUP_FILE $REMOTE_USER@$REMOTE_SERVER:$REMOTE_DIR

# Clean up the local backup file after successful transfer
if [ $? -eq 0 ]; then
  rm /tmp/$BACKUP_FILE
  echo "Backup completed successfully and file transferred to $REMOTE_SERVER."
else
  echo "Backup failed."
fi
