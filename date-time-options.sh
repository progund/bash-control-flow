#!/bin/bash

if [ "$1" = "--date" ]
then
    date +"%Y-%m-%d"
elif [ "$1" = "--time" ]
then
    date +"%H:%m:%S"
elif [ "$1" = "--swedish" ]
then
    date +"%Y-%m-%d %H:%m:%S"
else
    date
fi
