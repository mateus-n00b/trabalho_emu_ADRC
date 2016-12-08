#!/bin/bash

if [[ $(id -u) -ne 0 ]]; then
    echo "U need to be a root!"
    exit
elif [[ $# -lt 2 ]]; then
    echo "Usage: $0 <apacheDir> <container> "
    exit
fi
echo "[+] Copiando arquivos do apache modificado..."
cp -a "${1}"* "/tmp/$(ls /tmp/ | grep py)/$2.conf/etc.apache2"
[ $? -ne 0 ] && echo "[-] Ops, algo deu errado!!!" && exit
echo "[+]Ligando apache..."
vcmd -c  "/tmp/$(ls /tmp/ | grep py)/$2" -- service apache2 start
echo "Eu gosto de verbose!!!"
