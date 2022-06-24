#1/bin/bash


#find "$PWD" -type f -name '*.txt' -printf "%k %h/%f\n" | sort -rg

#создать скрипт,  который бы выводил список файлов в папке /var/log, сортировал бы по размеру и выводил в текстовый файл

find /var/log -type f -name '*.*' -printf "%k %h/%f\n" | sort -rg >> logs_sizes.txt
