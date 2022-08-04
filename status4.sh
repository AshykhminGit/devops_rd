#!/bin/bash

name='apache2'
PID=`ps aux| grep [/]usr/sbin/apache2 | awk '{print $2}'`

# DEBUG info
echo $PID

for PIDcycle in $PID; do
    sudo kill  -STOP $PIDcycle
done

sleep 10

for PIDcycle in $PID; do
    if ps -p $PIDcycle > /dev/null; then
        echo "$PIDcycle is running"
        sudo kill -9 $PIDcycle
    fi
done
