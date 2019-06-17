#! /bin/bash
#简易备份脚本
year=`date +%Y`
month=`date +%m`
time=`date +%Y-%m-%d_%H:%M:%S`
BACKDIR=/opt/$year/$month

mkdir -p $BACKDIR
tar -zcvPf $BACKDIR/$time.tar.gz /var/log/messages
echo 'END!'