#!/bin/bash
# 1. Question: Write a one-liner to extract specific columns from a CSV file.
cut -d',' -f1,3 file.csv
# Explanation:

# The -d',' option specifies the delimiter as a comma (since it’s a CSV file).
# -f1,3 extracts the first and third columns from the file file.csv.

# Alternatively, using awk to extract the same columns:
awk -F',' '{print $1, $3}' file.csv
# The -F',' option tells awk to use a comma as the field separator.
# $1 and $3 refer to the first and third fields (columns) in each line.

# 2. Question: How would you find all files larger than 500MB and delete them after confirmation?
find /path/to/dir -type f -size +500M -exec rm -i {} \;
# Explanation:

# find /path/to/dir searches within a specified directory.
# -type f restricts the search to files.
# -size +500M finds files larger than 500MB.
# -exec rm -i {} \; prompts for confirmation before deleting each file (rm -i is the interactive delete mode).


# If you want to list the files first and confirm all deletions at once:
find /path/to/dir -type f -size +500M -exec ls -lh {} \; -exec rm -i {} +
# This version first lists each file (ls -lh) to show its size, and then deletes it with confirmation (rm -i).

# 3. Question: Write a command to replace all occurrences of a string "foo" with "bar" in a file.
sed -i 's/foo/bar/g' filename
# Explanation:

# -i edits the file in place.
# 's/foo/bar/g' is the substitution command, where foo is replaced by bar globally (g flag means all occurrences on each line).

# 4. Question: How would you search for a specific pattern, such as "ERROR", in a log file and display the 5 lines before and after each match?
grep -B 5 -A 5 "ERROR" logfile.log
# Explanation:

# -B 5 shows 5 lines before each match.
# -A 5 shows 5 lines after each match.
# This will display the error along with the surrounding lines to provide more context.


# 5. Question: Write a one-liner to count the number of lines in a file that contain the word "fail".
grep -c "fail" filename
# Explanation:

# -c counts the number of matching lines containing the word "fail" in the file filename.

# 6. Question: How would you extract the second word from each line of a text file?
awk '{print $2}' filename
# Explanation:

# This command extracts and prints the second field ($2) from each line of the file filename.
# By default, awk uses spaces and tabs as delimiters.

# 7. Question: Write a one-liner to list all unique IP addresses from an Apache access log.
awk '{print $1}' access.log | sort | uniq
# Explanation:

# awk '{print $1}' extracts the first field (which is typically the IP address in Apache logs).
# sort sorts the extracted IP addresses.
# uniq filters out duplicate IP addresses, leaving only unique ones.


# 8. Question: How would you print the number of lines in a file that do not contain a specific word, such as "error"?
grep -vc "error" filename
