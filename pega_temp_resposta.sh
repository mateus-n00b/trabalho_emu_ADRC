#!/bin/bash
[ $# -eq 0 ] && echo "Usage: $0 <LogFile>" && exit
grep 'real' "$1" | awk '{print $2}' | tr -d 's' | sed 's/0m//g' > tempoResposta
