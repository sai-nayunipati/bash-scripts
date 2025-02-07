#!/bin/bash

formatted_date=$(date +"%B %d, %Y")
echo "Today is ${formatted_date}."

echo ""

UPR=$(curl -s https://fred.stlouisfed.org/series/UNRATE/ | \
grep -m 1 -oP '<span class="series-meta-observation-value">\K[^<]+')

echo "Unemployment Rate: ${UPR}%"

CSI=$(curl -s https://fred.stlouisfed.org/series/CSUSHPINSA | \
grep -m 1 -oP '<span class="series-meta-observation-value">\K[^<]+')

echo "Case-Schiller: ${CSI}"
