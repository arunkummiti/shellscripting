#!/bin/bash

# Define paths
BACKUP_SCRIPT="/path/to/backup.sh"
STATS_SCRIPT="/path/to/log_stats.sh"
LOG_FILE="/path/to/system_stats.log"

# Create backup script
echo "Creating backup script..."
cat <<EOL > $BACKUP_SCRIPT
#!/bin/bash
# Add your backup commands here
echo "Running backup at \$(date)" >> /path/to/backup.log
EOL

# Make backup script executable
chmod +x $BACKUP_SCRIPT

# Create system stats logging script
echo "Creating system stats logging script..."
cat <<EOL > $STATS_SCRIPT
#!/bin/bash
echo "CPU and Memory stats at \$(date)" >> $LOG_FILE
top -b -n1 | head -n 10 >> $LOG_FILE
EOL

# Make system stats script executable
chmod +x $STATS_SCRIPT

# Set up cron jobs
echo "Setting up cron jobs..."

# Backup cron job (runs every night at midnight)
(crontab -l 2>/dev/null; echo "0 0 * * * $BACKUP_SCRIPT") | crontab -

# System stats cron job (runs every 5 minutes)
(crontab -l 2>/dev/null; echo "*/5 * * * * $STATS_SCRIPT") | crontab -

echo "Cron jobs setup complete!"
