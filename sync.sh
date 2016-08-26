#!/bin/sh

lftp -c "set ftp:list-options -a;
open ftp://$FTP_USER:$FTP_PASS@$FTP_HOST; 
lcd ./_site;
mirror --reverse --delete --use-cache --verbose --allow-chown --allow-suid --no-umask --parallel=2"