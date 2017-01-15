#!/bin/bash

#
# This is a suggested solution to an exercise in one of Juneday Education's bash books
#
# The solution is using only the techniques and tools known by the
# students. We (the authors) know that there are better ways of
# solving this problem. We're writing a solution that we believe the
# students will understand :)
#
#

while [ "$1" != "" ]
do
    
    if [ "$1" = "--date" ]
    then
        DATE=true
    elif [ "$1" = "--time" ]
    then
        TIME=true
    elif [ "$1" = "--swedish" ]
    then
        FORMAT=swedish
    fi
    shift
done          



if [ "$DATE" = "true" ] && [ "$TIME" = "true" ] 
then
    BOTH=true
fi

if [ "$DATE" = "" ] && [ "$TIME" = "" ] 
then
    BOTH=true
fi


if [ "$BOTH" = "true" ]
then
    if [ "$FORMAT" = "swedish" ]
    then
        date +"%Y-%m-%d %H:%m:%S"
    else
        date
    fi
elif [ "$DATE" = "true" ] 
then
    date +"%Y-%m-%d"
elif [ "$TIME" = "true" ]
then
    date +"%H:%m:%S"
else
    echo "Uh oh...."
    exit 1
fi

exit 0
