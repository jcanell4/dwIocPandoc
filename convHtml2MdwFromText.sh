#!/bin/bash
# Conversor de documents HTML a dkw usant pandoc
#echo "$1"
echo "$1" | pandoc -f html -t markdown --filter filtres/iocfilter2mdw.hs

