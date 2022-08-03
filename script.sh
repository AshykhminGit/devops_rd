#!/bin/bash
#поиск директорий и файлов и вывод списка в текстовые файлы
for file in /usr/*
do
if [ -d "$file" ]
then
echo "$file is a directory" >> direcories.txt
elif [ -f "$file"]
then 
echo "$file is a file". >> files.txt
fi
done
