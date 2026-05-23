#!/bin/bash
for i in {1..4}; do printf "%d%s" $(( $1>=8 ? 255 : $1<=0 ? 0 : 256-2**(8-$1) )) "$( [ $i -lt 4 ] && echo -n . )"; (( $1-=8 )); done
