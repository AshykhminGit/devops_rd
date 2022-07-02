#!/bin/bash


#скрипт,  который проверял бы файлы в папке /usrі/sbin и находил из них только те, у которых есть атрибут на запуск и чтение. Список таких файлов выводится в файл usr_executables.txt
#строгий поиск если в каталоге таких файлов нет файл usr_executables.txt будет пустым чтобы расширить поиск делаем -perm /555 (добавляем слэш)
for file  in /usr/sbin; do
    find $file -type f -perm /555 -ls  >>usr_executables.txt
done
