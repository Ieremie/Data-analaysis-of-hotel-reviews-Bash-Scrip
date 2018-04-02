#!/bin/bash
for word in $1/*; do
echo -n  $word  | sed 's/.*\///g' | sed 's/.dat/ /g'
grep "<Overall>" $word |sed 's/<Overall>//g' | awk 'BEGIN{sum=0;count=0} {count++; sum+=$1} END{printf("%.2f\n", (sum/count))}'
done | sort -k2nr
 