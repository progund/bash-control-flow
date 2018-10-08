#!/bin/bash

SECS=$1
if [ "$SECS" = "" ]
then
    SECS=10
fi

while [ 1 -le $SECS ]
do
    echo "$SECS remaining"
    SECS=$(( $SECS - 1 ))
    sleep 1
done
echo awake



