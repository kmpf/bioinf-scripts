#!/usr/bin/env bash

# Taken from https://www.shell-tips.com/2010/06/14/performing-math-calculation-in-bash/

# Integer Math

# you can use 'expr' ...
expr 1 + 1
myvar=$(expr 1 + 2)
echo $myvar 
expr $myvar - 1
expr $myvar / 3
expr $myvar \* 3

# ... or you can use $(()) or $[]
echo $((myvar+1))
echo $((myvar-1))
