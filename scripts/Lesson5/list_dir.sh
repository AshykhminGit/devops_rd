#!/bin/bash
#создать скрипт,  который проверял бы файлы в папке /etc которые имеют аттрибут директории и выводил их файл etc_dir.txt
for file in /etc/*
do
if [ -d "$file" ]
then
echo "$file is a directory" >> etc_dir.txt
elif [ -f "$file" ]
then 
echo "$file is a file"
fi
done

