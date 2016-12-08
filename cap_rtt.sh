#!/bin/bash
# Filtra o rtt do log de saida do experimento
#
# Mateus-n00b, 2016
#
# Licenca GPL
#
# Versao 1.0
################################################################

if [[ $# -lt 1 ]]; then
  echo "Usage: $0 <LogFile>"
  exit
fi

grep rtt $1 | awk -F= '{print $2}' | awk -F/ '{print $2}' > rtt_out.txt
