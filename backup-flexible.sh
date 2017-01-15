#!/bin/bash

FULL_BACKUP_DAY1="01"
FULL_BACKUP_DAY2="15"

DAY_IN_MONTH=$(date +"%d")
date +"%Y-%m-%d %H:%m:%S"

# Suggested solution number 01
if [ "$DAY_IN_MONTH" = "$FULL_BACKUP_DAY1" ] || [ "$DAY_IN_MONTH" = "$FULL_BACKUP_DAY2" ] 
then
    echo "full backup needed"
else
    echo "incremental backup only"
fi

