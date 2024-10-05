#!/bin/bash

# Function to check for upcoming deadlines
check_submissions() {
  submissions_file=$1
  days_before=$2

  while IFS=, read -r student submission_date; do
    current_date=$(date +%Y-%m-%d)
    diff=$(( ( $(date -d "$submission_date" +%s) - $(date -d "$current_date" +%s) ) / 86400 ))
    
    if [ "$diff" -le "$days_before" ]; then
      echo "Reminder: $student has an upcoming deadline on $submission_date"
    fi
  done < "$submissions_file"
}
