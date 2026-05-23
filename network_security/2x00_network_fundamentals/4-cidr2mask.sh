#!/bin/bash
echo "$(( (0xFFFFFFFF << (32 - $1)) >> 24 & 255 )).$(( (0xFFFFFFFF << (32 - $1)) >> 16 & 255 )).$(( (0xFFFFFFFF << (32 - $1)) >> 8 & 255 )).$(( (0xFFFFFFFF << (32 - $1)) & 255 ))"
