#!/bin/bash
[ $# -eq 0 ] && echo "Isira a pasta e o IP do server" && exit
for x in {4..13}
do
	vcmd -c  "/tmp/$(ls /tmp/ | grep py)/n${x}" -- bash bot.sh "$1"  &
	[ $? -eq 0 ] && echo "[+] Comando executado no host $x!" || echo "[-] Erro!"
done
