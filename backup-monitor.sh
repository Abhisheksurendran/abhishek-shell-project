#!/bin/bash

BACKUP_DIR="/home/ubuntu/backup"

echo "===== BACKUP MONITOR ====="

if [ -d "$BACKUP_DIR" ]
then
    echo "Backup directory exists."

    echo "Backup contents:"
    ls -lh "$BACKUP_DIR"
else
    echo "WARNING: Backup directory does not exist."
fi

echo "===== CHECK COMPLETED ====="
