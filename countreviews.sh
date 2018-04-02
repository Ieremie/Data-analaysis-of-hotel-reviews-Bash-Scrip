#!/bin/bash
for word in $1/*; do
        echo -n  $word | sed 's/.*\///g' | sed 's/.dat/ /g'
        #echo -n $word
      echo  $(grep -c "<Author>" $word)
done | sort -k2nr
