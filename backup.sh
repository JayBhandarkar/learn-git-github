#!/bin/bash


<<info

this is shellscript of automate backup processs periodiclly

eg. 
./backup.sh <source> <destination>
info

src=$1
dest=$2

timestamp=$(date '+%Y-%m-%d-%H-%M')

zip -r "$dest/backup-$timestamp.zip" $src

aws s3 sync "$dest" s3://jay-backup-dummy

echo "backup done"

