#!/bin/bash
# Usage statement
usage() {
    echo "Usage: $0 <dir> <n>" 1>&2
    exit 1
}

# Check the number of arguments
if [ "$#" -ne 2 ]; then
    usage
fi

# Parse command line arguments
dir="$1"
size_limit="$2"

# Use the 'find' command to locate and delete files
find "$dir" -type f -size +"$size_limit"c -delete

echo "Files larger than $size_limit bytes in $dir have been removed."
