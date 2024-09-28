# Script to Kill Processes Using More Than 90% CPU
#!/bin/bash

# Get the list of processes using more than 90% CPU
high_cpu_processes=$(ps -eo pid,%cpu --sort=-%cpu | awk '$2 > 90 {print $1}')

if [ -z "$high_cpu_processes" ]; then
    echo "No processes using more than 90% CPU."
else
    echo "Killing the following processes using more than 90% CPU:"
    echo "$high_cpu_processes"
    
    # Kill each process
    for pid in $high_cpu_processes; do
        kill -9 $pid
        echo "Killed process ID: $pid"
    done
fi
