#!/bin/bash

#создать скрипт,  который проверял бы файлы в папке /usr находил из них файлы с атрибутом на исполнение и выводил в файл executable.txt 
for directory in $(echo $PATH | tr ':' '\n'); do
    find $directory -type f -perm /111 -ls  >> executable.txt
done
