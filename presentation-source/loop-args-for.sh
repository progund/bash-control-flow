#!/bin/bash

for i in $*
do
    echo "User arg: \"$1\" ($# left, including this)"
    shift
done
