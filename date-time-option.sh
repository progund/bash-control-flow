#!/bin/bash

if [ "$1" = "--swedish" ]
then
    date +"%Y-%m-%d %H:%m:%S"
else
    date
fi
