#!/bin/bash
#Script 4: Log Analyzer
#Author: Sapnoneel Barik
#Course: Open Source Software (Linux Administration)
#Description: Reads a log file line by line using a while-read loop,
#             counts occurances of a keyword, prints a summary,
#             and displays the last 5 matching lines found.

#-- Command line arguments --
LOGFILE=$1                #First argument is the log file patch
KEYWORD=${2:-"error"}     #Second argument is keyword, default is 'error'

#-- Counter variable to track keyword matches --
COUNT=0                   #Initialize counter to zero

#-- Validate that the log file exists --
if [ ! -f "$LOGFILE" ]; then    #Checks if file does not exist
    echo "======================================="
    echo "  Error: File '$LOGFILE' not found."
    echo "  Usage: ./script4.sh /var/log/messages error"
    echo "======================================="
exit 1                   #Exit with error code 1
fi

#-- Check if the log file is empty --
if [ ! -s "$LOGFILE" ]; then    #Checks if file is empty
    echo "======================================="
    echo "  Warning: File '$LOGFILE' is empty."
    echo "  Please provide a non-empty log file."
    echo "======================================="
    exit 1               #Exit with error code 1
fi

echo "======================================"
echo "   Log File Analyzer"
echo "======================================"
echo "   File    : $LOGFILE"
echo "   Keyword : $KEYWORD"
echo "======================================"
echo ""

#-- While-read loop to read file line by line --
while IFS= read -r LINE; do      #Read each line preserving whitespace

     #-- If-then to check if line contains the keyword --
     if echo "$LINE" | grep -iq "$KEYWORD"; then
                                 #grep -i for case insensitive match
                                 #grep -q for silent match
          COUNT=$((COUNT + 1))   #Increment counter for each match
     fi

done < "$LOGFILE"               #Redirects file contents into while loop

#-- Print summary of keyword occurances --
echo "  Keyword '$KEYWORD' found $COUNT time(s) in:"
echo "  $LOGFILE"
echo ""

#-- Print last 5 lines containing the keyword --
echo "========================================"
echo "   Last 5 Matching Lines"
echo "========================================"
echo ""

#Use grep and tail to find and display last 5 matching lines
grep -i "$KEYWORD" "$LOGFILE" | tail -5

echo ""
echo "========================================"
