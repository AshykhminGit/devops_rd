#!/bin/bash
#allProcess=`ps aux|grep [/]usr/sbin/apache2`

name='apache2'
PID=`ps aux| grep [/]usr/sbin/apache2 | awk '{print $2}'`
echo $PID

for PIDcycle in $PID

do

		       
	      sudo kill  -STOP $PIDcycle
	      
	      echo "Process $name $PIDcycle stopped"
 done
