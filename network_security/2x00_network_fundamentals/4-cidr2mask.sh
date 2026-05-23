#!/bin/bash
m=$1; for i in {1..4}; do printf "%d" $((m>=8?255:m<=0?0:256-2**(8-m))); [ $i -lt 4 ] && printf .; ((m-=8)); done
:
