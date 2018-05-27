#!/bin/bash
##1 hour  process  rank 
##per  60s 
seconds=3600
unit_time=60
let counts=$seconds/$unit_time
for((i=0;i<$counts;i++));
do
ps -eocomm,pcpu | egrep  -v "(%CPU)"    >>  /tmp/cpu_usage.$$
sleep  $unit_time
done
echo "process usage  :"
cat  /tmp/cpu_usage.$$  | awk  '{process[$1]+=$2}END{for (i in process){printf("%-20s %s\n",i,process[i])} }' | sort  -rnk 2 | head
rm  -rf  /tmp/cpu_usage.$$
