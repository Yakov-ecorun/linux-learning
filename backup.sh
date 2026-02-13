#!/bin/bash

# Переменные для удобства
SOURCE_DIR="src"
BACKUP_DIR="backups"
DATE=$(date +%Y-%m-%d_%H-%M-%S)
ARCHIVE_NAME="backup_${USER}_$(hostname)_$DATE.tar.gz"

# Проверка: существует ли папка назначения? Если нет — создаем.
if [ ! -d "$BACKUP_DIR" ]; then
    echo "Error: Source directory '$SOURCE_DIR' does not exist."
    exit 1
fi

if [ ! -d "$BACKUP_DIR" ]; then
    echo "Creating backup directory..."
    mkdir -p "$BACKUP_DIR"
fi
# tar -czf: Create, Zip (gzip), File

echo "Starting backup for $SOURCE_DIR..."

tar -czf "$BACKUP_DIR/$ARCHIVE_NAME" "$SOURCE_DIR"

if [ $& -eq 0 ]; then
    echo "Backup successfully created:"
    echo "$BACKUP_DIR/$ARCHIVE_NAME"
else
    echo "Backup failed."
fi

