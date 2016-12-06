#[ $# -eq 0 ] && exit
for x in {1..23}
do
    cp *.sh "/tmp/$(ls /tmp/ | grep py)/n${x}.conf" &> /dev/null
#    [ $? -eq 0 ] || echo "[-] Erro ao copiar para /tmp/pycore.36585/n${x}.conf"
done
