#!/bin/bash

SUFFIX=""
DIR=$(pwd)
for option in $*
do
    if [ -d $option ]
    then
        DIR=$option
    else
        SUFFIX=$option
    fi
    shift
done

if [ "$SUFFIX" = "" ]
then
    echo "Missing suffix"
    exit 1
fi
find $DIR -name "*.$SUFFIX"

