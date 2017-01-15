#!/bin/bash

SUFFIX=""
DIR=.
for option in $*
do
    if [ -d $option ]
    then
        DIR=$option
    else
        if [ "$SUFFIX" != "" ]
        then
            SUFFIX="$SUFFIX -o "
        fi
        SUFFIX="$SUFFIX -name \"*.$option\""
    fi
    shift
done

if [ "$SUFFIX" = "" ]
then
    echo "Missing suffix"
    exit 1
else
    SUFFIX="$SUFFIX"
fi
eval find $DIR -type f $SUFFIX
