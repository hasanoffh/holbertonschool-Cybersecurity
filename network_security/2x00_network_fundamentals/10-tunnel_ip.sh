#!/bin/bash
ip addr show dev tun0 | awk '/inet / {print $2}' | cut -d/ -f1
