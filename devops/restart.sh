#!/bin.bash
ps x|grep python|grep -E 'runapi|runweb'|grep -v grep|awk '{print $1}'|xargs kill -9
nohup  python runweb.py &>runweb.log &
nohup  python runapi.py &>runapi.log &
