#!/bin/bash 
cat Property_Tax_Roll.csv |
grep "MADISON SCHOOLS" |
cut -d ',' -f 7 |
{
    total=0
    count=0
    while read -r line; do
        total=$((total + line))
        count=$((count + 1))
    done

    if [ $count -ne 0 ]; then
        average=$((total / count))
        echo "Average TotalAssessedValue for MADISON SCHOOLS properties: $average"
    else
        echo "No properties found for MADISON SCHOOLS district."
    fi
}
