#!/bin/bash

SECS=$1
if [ "$SECS" = "" ]
then
    SECS=10
fi

while [ 1 -le $SECS ]
do
    printf "\r%.3d seconds remaining" $SECS
    SECS=$(( $SECS - 1 ))
    sleep 1
done
printf "\r"




