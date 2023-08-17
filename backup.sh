#!/bin/bash

#set dir that you want to back up
srcDir="/etc/httpd/logs"

#set dir that you want to be destination
dstDir="/your/destination/path"

#set how many days you want to keep your backup
keeping_days=30

#will tar up the file under the source directory
tar zcfp $dstDir/web_server_log_backup$(date +%Y%m%d).tar.gz $srcDir

#delete the oldest file after file keeping day are reached
expired_backup=$(ls -t $dstDir | tail -n +$((keeping_days+1)))
for del in $expired_backup; do
        rm -rf $dstDir/$del

done



echo "done"
exit 0

