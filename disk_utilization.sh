#!/bin/bash
THRESHOLD=10
email=kummitiarun@gmail.com
df -h | grep -vE '^Filesystem|tmpfs|cdrom' | awk '{print $6 " " $1}' | while read output;do
usage=$(echo $output | awk '{print $1}' | sed 's/%/ /')
partition=$(echo $output | awk '{print $2}')
echo $usage
echo $partition

if [ $usage -ge $THRESHOLD ]; then
    # echo "limit of $partition disk exceeded $THRESHOLD" | mail -s 'Disk utilization threshold reached' $email
    echo "threshold reached"
else
echo "safe usage"
fi
done