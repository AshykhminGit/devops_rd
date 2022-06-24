#!/bin/bash
for directory in $(echo $PATH | tr ':' '\n'); do
    find $directory -type f -perm /111 -ls  >> executable.txt
done
