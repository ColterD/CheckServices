#!/bin/bash

###Edit the following!!
service=service_name
email=user@domain.com
###Stop editing here!!

host=`hostname -f`
if (( $(ps -ef | grep -v grep | grep $service | wc -l) > 0 ))
then
echo "$service is already running, no problems here!"
else
/etc/init.d/$service start
if (( $(ps -ef | grep -v grep | grep $service | wc -l) > 0 ))
then
subject="$service at $host has been started"
echo "$service at $host wasn't running and has been started." | mail -s "$subject" $email
else
subject="$service at $host is not running"
echo "$service at $host is stopped and cannot be started!" | mail -s "$subject" $email
fi
fi
