#!/bin/bash
search=`ps aux| grep [/]usr/sbin/apache2 | awk '{print $2}'`
echo $search
if [ "$search" == "" ] ;
	then
	       echo "Nothing to do"
        else 
			       
	      sudo  kill -9 $search
fi

