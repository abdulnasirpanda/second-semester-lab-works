#!/bin/bash

# Task 1: Backup script that copies itself to backup directory

BACKUP_DIR="$HOME/backup"
mkdir -p "$BACKUP_DIR"

DATE=$(date +"%Y%m%d_%H%M%S")
BACKUP_FILE="$BACKUP_DIR/backup_$DATE.tar.gz"

tar -czf "$BACKUP_FILE" "$0"

echo "Backup created: $BACKUP_FILE"

