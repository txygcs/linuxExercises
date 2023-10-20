#!/bin/bash
mkdir five

for i in {1..5}; do
    subdir="five/dir$i"
    mkdir -p "$subdir"

    for j in {1..4}; do
	file="$subdir/file$j"

	for k in $(seq $j); do
	    echo "$j">>"$file"
	done
    done
done
