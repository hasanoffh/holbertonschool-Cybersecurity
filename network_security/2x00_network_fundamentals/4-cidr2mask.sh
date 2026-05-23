#!/bin/bash
python3 -c "import sys; n=int(sys.argv[1]); mask=0xFFFFFFFF^((1<<(32-n))-1) if n>0 else 0; print('.'.join(str((mask>>(8*i))&0xFF) for i in [3,2,1,0]))" $1

