#!/bin/bash

UC=false
LC=false

while [[ $1 != "" ]]
do
    [[ $1 == --upper-case ]] && UC=true
    [[ $1 == --lower-case ]] && LC=true
    [[ $1 =~ ^[^-] ]] && FILE="$1"
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
