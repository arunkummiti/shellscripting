#!/bin/bash
# How would you debug a script to see each command that is being executed?
# Enable debug mode
set -x

# Example commands
echo "This is a test."
mkdir /some/directory
cp /some/file /destination/

# Disable debug mode
set +x

echo "Debugging off now."


# Explanation:

# set -x prints each command and its arguments as they are executed, which helps in understanding the script's behavior and identifying where issues might arise.
# You can also turn off debugging with set +x when it's no longer needed.
