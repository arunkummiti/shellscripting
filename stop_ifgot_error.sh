#!/bin/bash
# How would you modify a script to stop execution when an error occurs and log the error?
set -e

trap 'echo "error at line $LINENO.. exiting"; exit 1' ERR

cp /dummy/file/ /destination/

echo "do not print if error"


# Explanation:

# set -e ensures that the script exits immediately when any command returns a non-zero exit code (indicating failure).
# trap is used to catch the error, print a custom error message, and exit with a specific code (1).
# $LINENO provides the line number where the error occurred, helping with debugging.
