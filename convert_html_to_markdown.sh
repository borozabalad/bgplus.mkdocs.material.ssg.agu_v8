#!/bin/bash

# to run:
# cd ~/Desktop/Documents/HTML_Files
# chmod +x convert_html_to_markdown.sh
# ./convert_html_to_markdown.sh

# Get the root directory
root_dir=$(dirname /)

# Directory where your media will be stored in the root directory
media_dir_name="assets"

# Absolute path for media storage
media_dir="/Users/terraire/Downloads/61b395986d002b006b651ac9/assets"

# Create media directory if it doesn't exist
# mkdir -p "$media_dir"

# Loop through all html files in the current directory
for file in *.html; do
    # Use the filename without extension for the markdown file
    output="${file%.html}.md"

    echo "Converting $file to $output..."
    pandoc -s "$file" -t markdown --extract-media="$media_dir" -o "$output"
done

echo "Conversion completed."
