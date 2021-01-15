#!/bin/sh
ps -ef | grep gitbook | grep -v grep|grep 4000|  awk '{print $2}' | xargs kill -9
git pull
setsid gitbook serve --lrport=35728 --port=4000
echo "successful!"
