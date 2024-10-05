#!/bin/bash

# Load configuration and functions
source ../config/config.env
source ./functions.sh

# Check for upcoming deadlines
check_submissions "../data/submissions.txt" "$REMINDER_DAYS"
