#!/bin/bash

DAY_IN_MONTH=$(date +"%d")
date +"%Y-%m-%d %H:%m:%S"

if [ "$DAY_IN_MONTH" = "01" ]
then
    echo "full backup needed"
else
    echo "incremental backup only"
fi
