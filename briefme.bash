#!/bin/bash

formatted_date=$(date +"%B %d, %Y")

echo ""

echo "Today is ${formatted_date}."

echo ""

echo "ECONOMICS"

UPR=$(curl -s https://fred.stlouisfed.org/series/UNRATE/ | \
grep -m 1 -oP '<span class="series-meta-observation-value">\K[^<]+')

echo "Unemployment Rate: ${UPR}%"

echo ""

echo "REAL ESTATE"

THIRTY_YEAR=$(curl -s https://fred.stlouisfed.org/series/MORTGAGE30US | \
grep -m 1 -oP '<span class="series-meta-observation-value">\K[^<]+')

echo "30-Year Fixed Rate Mortgage: ${THIRTY_YEAR}%"

FIFTEEN_YEAR=$(curl -s https://fred.stlouisfed.org/series/MORTGAGE15US | \
grep -m 1 -oP '<span class="series-meta-observation-value">\K[^<]+')

echo "15-Year Fixed Rate Mortgage: ${FIFTEEN_YEAR}%"
