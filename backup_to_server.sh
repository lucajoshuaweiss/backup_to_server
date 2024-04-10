#!/bin/bash

#Configuration
SERVER="?.?.?.?"
BACKUP_PATHS="/path1 /path2 /path3"
BACKUP_PATH_ON_SERVER=/backuppath

for BACKUP_PATH in ${BACKUP_PATHS} ; do
    echo -e "\nTrying to connect to $SERVER\n"
    rsync -avW --delete $BACKUP_PATH $SERVER:$BACKUP_PATH_ON_SERVER
    echo -e "\nBackup of $BACKUP_PATH is now terminating\n\n\n"
done


