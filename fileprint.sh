#!/bin/bash

while [ "$1" != "" ]
do
    if [ "$1" = "--upper-case" ]
    then
        UC=true
        LC=falce
    elif [ "$1" = "--lower-case" ]
    then
        UC=false
        LC=true
    else
        FILE=$1
    fi
    shift
done

if [ "$FILE" = "" ] || [ ! -f $FILE ]
then
    echo "File \"$FILE\" does not exist"
    exit 1
fi

if [ "$UC" = "true" ]
then
    cat $FILE | tr [a-z] [A-Z]
elif [ "$LC" = "true" ]
then
    cat $FILE | tr [A-Z] [a-z]
else
    cat $FILE
fi
