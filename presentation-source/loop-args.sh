#!/bin/bash

while [ "$1" != "" ]
do
    echo "User arg: \"$1\" ($# left, including this)"
    shift
done
