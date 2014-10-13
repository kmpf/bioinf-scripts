#!/usr/bin/env bash

# Using a file as stdin for a command

program < file

## file
# command #1
# command #2

# Using a here-document as stdin for a command

program <<EOF
command #1
command #2
EOF

# Using a here-string as stdin for a program

program <<< $var
# $var gets expanded and fed to the stdin of program
