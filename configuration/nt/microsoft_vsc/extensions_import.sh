#!/usr/bin/env bash

DIRNAME=$(dirname $(realpath "$0"))

filename="$DIRNAME/extensions.txt"

# Check if the file exists
if [ ! -f "$filename" ]; then
    echo "File not found: $filename"
    exit 1
fi

# Read the file line by line and install extensions
while IFS= read -r line || [[ -n "$line" ]]; do
    # Trim whitespace from the line
    extension_id=$(echo "$line" | xargs)

    # Skip empty lines
    if [ -z "$extension_id" ]; then
        continue
    fi

    echo "Installing extension: $extension_id"
    code --install-extension "$extension_id"
    echo ""
done <"$filename"

echo "All extensions have been processed."
