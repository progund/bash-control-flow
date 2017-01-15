#!/bin/bash

DIR=$(pwd)
if [ "$1" != "" ]
then
    DIR=$1
fi

find . -name "*.sh"

