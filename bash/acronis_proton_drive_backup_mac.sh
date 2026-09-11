#!/bin/bash

# Script to copy all Proton Drive files to Acronis

SOURCE_DIR="$HOME/Library/CloudStorage/ProtonDrive-pierre@pierrevf.com-folder/"
DEST_DIR="/Users/pvf/Backup/Infomaniak-Acronis/ProtonDrive"

# Check if source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: Source directory $SOURCE_DIR does not exist."
    exit 1
fi

# Check if destination directory exists, if not create it
if [ ! -d "$DEST_DIR" ]; then
    mkdir -p "$DEST_DIR"
fi

# Copy all files from source to destination (excluding " _Shared")
rsync -av --exclude='_Shared' "$SOURCE_DIR" "$DEST_DIR/"

echo "Files copied from $SOURCE_DIR to $DEST_DIR successfully."
