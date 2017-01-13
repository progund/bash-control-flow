#!/bin/bash 
                                                                    
if [ $# -eq 1 ]
then
    dir=$1
elif [ $# -gt 1 ]
then
	echo "syntax error"
	exit 1
else
    dir=$(pwd)
fi
date && echo $dir && du -sh $dir




