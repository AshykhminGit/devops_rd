#!/bin/bash
#allProcess=`ps aux|grep [/]usr/sbin/apache2`

name='apache2'
PID=`ps aux| grep [/]usr/sbin/apache2 | awk '{print $2}'`
echo $PID
if [ "$PID" == "" ] ;
	then
	       echo "Nothing to do"
        else 
			       
	      sudo kill  -STOP $PID
	      echo "“Process $name $PID stopped"
fi

