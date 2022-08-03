#!/bin/sh

PID=`ps -eaf | grep apache | grep -v grep | awk '{print $2}'`
if [[ ""!=  "$PID" ]]; then
	          echo "killing $PID"
		              kill -9 $PID
fi
~
~
~

