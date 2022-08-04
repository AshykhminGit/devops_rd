#!/bin/bash
#создаем пременную для поиска апача. нэйм для имени PID для номера процесса
name='apache2'
PID=`ps aux| grep [/]usr/sbin/apache2 | awk '{print $2}'`  # ``    такие кавычки нужны для выполнения команды '{print $2}' вывод второго столбца из грепа

# DEBUG info
echo $PID
#делаем цикл в которром ищем пиды если пид есть отпраляем ему стоп
for PIDcycle in $PID; do
    sudo kill  -STOP $PIDcycle
done
#ждем 10 секунд
sleep 10
# второй цикл на поиск отсавшихся в живых Если находит то  уже киляет
for PIDcycle in $PID; do
    if ps -p $PIDcycle > /dev/null; then
        echo "$PIDcycle is running"
        sudo kill -9 $PIDcycle
    fi
done
