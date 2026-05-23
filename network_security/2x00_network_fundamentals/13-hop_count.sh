#!/bin/bash
tracepath -n "$1" | awk '/^ *[0-9]+:/ {h=$1} END {gsub(/[^0-9]/,"",h); print h}'
