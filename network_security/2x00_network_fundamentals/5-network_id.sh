#!/bin/bash
printf "%d.%d.%d.%d\n" "$(( $(echo $1 | cut -d. -f1) & $(echo $2 | cut -d. -f1) ))" "$(( $(echo $1 | cut -d. -f2) & $(echo $2 | cut -d. -f2) ))" "$(( $(echo $1 | cut -d. -f3) & $(echo $2 | cut -d. -f3) ))" "$(( $(echo $1 | cut -d. -f4) & $(echo $2 | cut -d. -f4) ))"
