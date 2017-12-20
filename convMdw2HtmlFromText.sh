#!/bin/bash
# Conversor de documents dkw a HTML usant pandoc
#echo "$1"
echo "$1" | pandoc -f markdown -t html

