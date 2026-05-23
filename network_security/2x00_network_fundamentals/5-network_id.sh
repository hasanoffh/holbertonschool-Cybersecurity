#!/bin/bash
IFS=. read -r ip1 ip2 ip3 ip4 <<< "$1"; IFS=. read -r mask1 mask2 mask3 mask4 <<< "$2"
printf "%d.%d.%d.%d\n" "$((ip1 & mask1))" "$((ip2 & mask2))" "$((ip3 & mask3))" "$((ip4 & mask4))"
