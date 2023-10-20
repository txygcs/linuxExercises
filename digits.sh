#!/bin/bash
sum=0
for number in {1000..2000}; do
    number_str="$number"
    if [[ $number_str =~ ^[01]+$ ]]; then
        sum=$((sum + number))
   fi
done
echo "Sum of numbers with digits only from {0, 1} between 1000 and 2000: $sum"
