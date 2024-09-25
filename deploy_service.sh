#!/bin/bash
# List of servers
SERVERS=("server1.example.com" "server2.example.com" "server3.example.com")
# Path to the deployment script or service installation file
DEPLOY_SCRIPT="/path/to/deploy_service.sh"

# Loop through the list of servers and deploy the service
for server in "${SERVERS[@]}"; do
  echo "Deploying service to $server..."
  # Copy the deploy script to the remote server
  scp $DEPLOY_SCRIPT user@$server:/tmp/
  
  # SSH into the server and run the deployment script
  ssh user@$server 'bash /tmp/deploy_service.sh'
  
  # Check if the service is running
  ssh user@$server 'systemctl status my_service'
  
  if [ $? -eq 0 ]; then
    echo "Service deployed successfully on $server."
  else
    echo "Failed to deploy service on $server."
  fi
done
