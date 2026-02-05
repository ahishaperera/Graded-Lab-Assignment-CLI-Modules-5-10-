#!/bin/bash

# Check argument count
if [ "$#" -ne 1 ]; then
    echo "Error: Please provide exactly one log file."
    exit 1
fi

LOGFILE="$1"

# Check if file exists and is readable
if [ ! -f "$LOGFILE" ] || [ ! -r "$LOGFILE" ]; then
    echo "Error: File does not exist or is not readable."
    exit 1
fi

TOTAL=$(wc -l < "$LOGFILE")
INFO=$(grep -c " INFO " "$LOGFILE")
WARNING=$(grep -c " WARNING " "$LOGFILE")
ERROR=$(grep -c " ERROR " "$LOGFILE")

LAST_ERROR=$(grep " ERROR " "$LOGFILE" | tail -n 1)

DATE=$(date +%Y-%m-%d)
REPORT="logsummary_$DATE.txt"

{
    echo "Log Summary Report - $DATE"
    echo "Total entries: $TOTAL"
    echo "INFO messages: $INFO"
    echo "WARNING messages: $WARNING"
    echo "ERROR messages: $ERROR"
    echo "Most recent ERROR:"
    echo "$LAST_ERROR"
} > "$REPORT"

echo "Report generated: $REPORT"
