#!/bin/bash


IFS=:
for folder in $PATH*
#for folder in /home/ashykhmin/Devops/devops_rd/scripts/*
do
   echo "$folder:"
   for file in $foler/*    
   do
      if [ -x $file ]
      then
        echo " This is executable file   $file" >> executable.txt
      fi
   done  
done
