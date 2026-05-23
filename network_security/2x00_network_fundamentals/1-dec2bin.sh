#!/bin/bash

# Arqumentin daxil edilib-edilmədiyini yoxlayırıq
if [ -z "$1" ]; then
    echo "İstifadə qaydası: $0 <decimal_number>"
    exit 1
fi

# Decimal rəqəmi binary-ə çeviririk və 8 bit olacaq şəkildə sıfırlarla doldururuq
printf "%08d\n" $(echo "obase=2; $1" | bc)
