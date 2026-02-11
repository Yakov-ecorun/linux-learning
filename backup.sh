#!/bin/bash

# Переменные для удобства
SOURCE_DIR="src"
BACKUP_DIR="backups"
DATE=$(date +%Y-%m-%d_%H-%M-%S)
ARCHIVE_NAME="backup_$DATE.tar.gz"

# Проверка: существует ли папка назначения? Если нет — создаем.
if [ ! -d "$BACKUP_DIR" ]; then
    echo "Creating backup directory..."
    mkdir -p "$BACKUP_DIR"
fi

echo "Starting backup for $SOURCE_DIR..."

# tar -czf: Create, Zip (gzip), File
tar -czf "$BACKUP_DIR/$ARCHIVE_NAME" "$SOURCE_DIR"

echo "Backup created: $BACKUP_DIR/$ARCHIVE_NAME"

