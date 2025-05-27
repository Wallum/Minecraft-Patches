#!/bin/bash

# Usage: ./zip_folder.sh /path/to/folder

FOLDER_PATH="$1"
ZIP_NAME="${FOLDER_NAME}.zip"


FOLDER_PATH="data"
ZIP_NAME="Minecraft-Patches.zip"


FOLDER_NAME=$(basename "$FOLDER_PATH")



if [ -d "$FOLDER_PATH" ]; then
    zip -r "$ZIP_NAME" "$FOLDER_PATH"
    echo "Folder '$FOLDER_PATH' has been zipped into '$ZIP_NAME'"
else
    echo "Error: Folder '$FOLDER_PATH' does not exist."
    exit 1
fi
