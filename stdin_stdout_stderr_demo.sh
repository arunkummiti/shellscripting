#!/bin/bash

# Explaining stdin, stdout, and stderr

# 1. Standard Output (stdout) - File Descriptor 1
#    By default, this is your normal output stream (e.g., the terminal).
#    Anything you `echo` or print to stdout goes to the terminal.

echo "This is standard output (stdout)"

# 2. Standard Error (stderr) - File Descriptor 2
#    This is where error messages or any output considered an error is sent.
#    It is separate from stdout. Even if stdout is redirected, stderr will not be unless you explicitly do so.

echo "This is standard error (stderr)" >&2

# 3. Standard Input (stdin) - File Descriptor 0
#    Normally used to provide input to a script or command.
#    You can prompt the user to enter some input and read from stdin using `read`.

echo "Enter something to be processed as stdin:"
read user_input  # reads from stdin
echo "You entered: $user_input"  # This will be sent to stdout

# Demonstrating redirection:

# 4. Redirect stdout to a file
echo "This stdout message goes into stdout_file.txt" > stdout_file.txt

# 5. Redirect stderr to a file
echo "This stderr message goes into stderr_file.txt" >&2 2> stderr_file.txt

# 6. Redirect both stdout and stderr to the same file
echo "This goes to both stdout and stderr" > combined_output.txt 2>&1

# 7. Redirect stdin from a file
# Assuming you have a file called 'input.txt', the following will read its content as stdin.
# Example of creating an input.txt file for demo purposes:
echo "Input from a file" > input.txt

echo "Reading from input.txt as stdin:"
cat < input.txt

# 8. Append to a file (instead of overwriting it)
echo "This will be appended to stdout_file.txt" >> stdout_file.txt
