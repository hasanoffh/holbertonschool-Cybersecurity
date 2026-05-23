#!/bin/bash
echo "$(( (0xFFFFFFFF << (32 - $1)) >> 24 & 0xFF )).$(( (0xFFFFFFFF << (32 - $1)) >> 16 & 0xFF )).$(( (0xFFFFFFFF << (32 - $1)) >> 8 & 0xFF )).$(( (0xFFFFFFFF << (32 - $1)) & 0xFF ))"
