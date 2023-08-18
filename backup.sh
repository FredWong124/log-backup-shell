#!/bin/bash

#set dir that you want to back up
srcDir="/etc/httpd/logs"

#set dir that you want to be destination
dstDir="/your/destination/path"

#set how many days you want to keep your backup
keeping_days=30

#if there is no destination directory , then create the new one
mkdir -p $dstDir

#copy log files from source dir
cp $srcDir/access_log $srcDir/error_log $dstDir

#naming the backup tar.gz file and tar up logs file
backup="web_server_logs_$(date +%Y%m%d).tar.gz"
tar -czf $dstDir/$backup -C $dstDir access_log error_log

#remove the logs copy from source file
rm -f $dstDir/access_log
rm -f $dstDir/error_log

#delete expired backup
expired_backup=$(ls -t $dstDir | tail -n +$((keeping_days+1)))
        for del in $expired_backup; do
                rm -rf $dstDir/$del
done


echo "done"
exit 0
