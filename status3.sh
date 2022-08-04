#!/bin/bash
#allProcess=`ps aux|grep [/]usr/sbin/apache2`

name='apache2'
PID=`ps aux| grep [/]usr/sbin/apache2 | awk '{print $2}'`
echo $PID

for PIDcycle in $PID

do

		       
	      sudo kill  -STOP $PIDcycle


 done


sleep 10


for PIDcycle in $PID


do





        if ps -p $PIDcycle > /dev/null
                then
           echo "$PIDcycle is running"
                 # Do something knowing the pid exists, i.e. the process with $PID is running

                 sudo kill -9 $PIDcycle

        fi



              echo "Process $name $PIDcycle stopped"
 done

