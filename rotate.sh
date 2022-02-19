#!/usr/bin/env sh

# function to rotate a file
rotateFile() {
    if [ $# -eq 0 ]; then return; fi;
    file="$1"
    if [ -w "$file" ]; then
        NOW=$(date +"%F_%T")
        mv "$file" "$file.$NOW"
        /bin/gzip "$file.$NOW"
    fi
}

# if not argument, then exit
[ $# -eq 0 ] && exit 1

# search files in pattern and rotate them
for file in $(find "$1" | cat); do
   rotateFile "$file"
done
