#!/bin/bash

DAY_IN_MONTH=$(date +"%d")
date +"%Y-%m-%d %H:%m:%S"

# Suggested solution number 01
if [ "$DAY_IN_MONTH" = "01" ] || [ "$DAY_IN_MONTH" = "14" ] 
then
    echo "full backup needed"
else
    echo "incremental backup only"
fi

# Suggested solution number 02
if [ "$DAY_IN_MONTH" = "01" ] 
then
    echo "full backup needed"
elif [ "$DAY_IN_MONTH" = "14" ]
then
    echo "full backup needed"
else
    echo "incremental backup only"
fi
