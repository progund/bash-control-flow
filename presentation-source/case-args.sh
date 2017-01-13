#!/bin/bash

while [ "$1" != "" ]
do
    case $1 in
        "--upper-case")
            UC=true
            ;;
        *)
            MSG=$1
            ;;
    esac
    shift
done

if [ "$UC" = "true" ]
then
    echo $MSG | tr [a-z] [A-Z]
else
    echo $MSG
fi
