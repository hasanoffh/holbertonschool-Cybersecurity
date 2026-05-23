#!/bin/bash
IFS=. read -r a b c d <<< "$1"; IFS=. read -r e f g h <<< "$2"; printf "%d.%d.%d.%d\n" "$((a | (255 ^ e)))" "$((b | (255 ^ f)))" "$((c | (255 ^ g)))" "$((d | (255 ^ h)))"
