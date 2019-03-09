#!/bin/bash

# C-style while loop:
i=0
while ((i++ < 10))
do
    echo $i
done

# C-style increment/decrement:
i=1
echo $((++i)) # will print 2

# C-style ternary:
i=4
((val = i<5 ? 1 : 0))
echo $val # will print 1

# C-style IF:
i=10
if (( i<11 ))
then
    echo hello
fi

# C-style FOR-loop:
for ((i=0;i<10;i++))
do
    echo $i;
done
