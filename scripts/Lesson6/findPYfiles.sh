#!/bin/bash

#скрипт,  который находил бы все файлы *.py  и записывал поток файлов в  file  py_scripts, а ошибки в py_errors.




for file in /*; do
  find  $file -type f -name *.py -ls  1>> py_scripts.txt 2>py_errors.txt
done
