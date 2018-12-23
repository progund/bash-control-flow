#!/bin/bash

UC=false
LC=false

while [[ $1 != "" ]]
do
    if [[ $1 == --upper-case ]]
    then
        UC=true
        LC=false
    elif [[ $1 == --lower-case ]]
    then
        UC=false
        LC=true
    else
        FILE="$1"
    fi
    shift
done

if [[ $FILE == "" || ! -f "$FILE" ]]
then
    echo "File \"$FILE\" does not exist"
    exit 1
fi

if $UC
then
    cat "$FILE" | tr [a-z] [A-Z]
elif $LC
then
    cat "$FILE" | tr [A-Z] [a-z]
else
    cat "$FILE"
fi
