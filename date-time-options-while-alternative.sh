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

while [[ $1 != "" ]]
do
    if [[ $1 == --date ]]
    then
        DATE=true
    elif [[ $1 == --time ]]
    then
        TIME=true
    elif [[ $1 == --swedish ]]
    then
        FORMAT=swedish
    fi
    shift
done



if [[ ($DATE && $TIME) || ($DATE == "" && $TIME == "") ]]
then
    BOTH=true
fi

if [[ $FORMAT == swedish ]]
then
    DF_BOTH="%Y-%m-%d %H:%m:%S"
    DF_TIME="%H:%m:%S"
    DF_DATE="%Y-%m-%d"
else
    DF_BOTH="%m/%d/%Y %r"
    DF_TIME="%r"
    DF_DATE="%m/%d/%Y"
    #date +"%m/%d/%Y %H:%m:%S"
fi

if [[ $BOTH ]]
then
    date +"$DF_BOTH"
elif [[ $DATE ]]
then
    date +"$DF_DATE"
elif [[ $TIME ]]
then
    date +"$DF_TIME"
fi

exit 0
