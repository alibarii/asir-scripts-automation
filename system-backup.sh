#!/bin/bash
# ==============================================================================
# Script Name: system-backup.sh
# Description: Compresses specified directories into a timestamped archive.
# Author: Ali (ASIR Student)
# ==============================================================================

# Variables
BACKUP_SRC="/etc"
BACKUP_DEST="/tmp/backups"
TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)
ARCHIVE_NAME="etc_backup_$TIMESTAMP.tar.gz"

# Create destination directory if it doesn't exist
mkdir -p "$BACKUP_DEST"

echo "=========================================="
echo " Starting System Backup"
echo " Time: $TIMESTAMP"
echo "=========================================="

# Create compressed archive
tar -czf "$BACKUP_DEST/$ARCHIVE_NAME" "$BACKUP_SRC" 2>/dev/null

if [ $? -eq 0 ]; then
    echo "[SUCCESS] Backup created at: $BACKUP_DEST/$ARCHIVE_NAME"
    echo "Archive Size: $(du -sh "$BACKUP_DEST/$ARCHIVE_NAME" | cut -f1)"
else
    echo "[ERROR] Backup failed!"
    exit 1
fi

echo "=========================================="
