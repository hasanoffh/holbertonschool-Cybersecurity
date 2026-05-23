#!/bin/bash
mask=$(printf "%032d" $(echo "obase=2; $(( (1 << 32) - (1 << (32 - $1)) ))" | bc) | sed "s/\(.\{8\}\)/\1 /g")
printf "%d.%d.%d.%d\n" $(echo "ibase=2; $(echo $mask | awk "{print \$1}")" | bc) $(echo "ibase=2; $(echo $mask | awk "{print \$2}")" | bc) $(echo "ibase=2; $(echo $mask | awk "{print \$3}")" | bc) $(echo "ibase=2; $(echo $mask | awk "{print \$4}")" | bc)
