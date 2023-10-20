#!/bin/bash

if [[ $# -lt 1 ]]; then
    echo "Usage: $0 <column> [file.csv]" >&2
    exit 1
fi

column=$1
file=${2:-"-"}

mean=$(cut -d ',' -f $column "$file" | tail -n +2 | { sum=0; i=0; while read n; do i=$(($i+1)); sum=$(($sum + $n)); done; m=$(echo "scale=2; $sum/$i" | bc) ; echo "$m";})

echo $mean
