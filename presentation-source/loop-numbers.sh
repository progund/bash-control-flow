#!/bin/bash

TIMES_LEFT=3
while [ $TIMES_LEFT -gt 0 ]
do
    echo "$TIMES_LEFT loops to go"
    sleep 1
    TIMES_LEFT=$(( TIMES_LEFT - 1 ))
done
