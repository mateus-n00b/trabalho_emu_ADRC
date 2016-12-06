grep real $1 | sed 's/0m//g' | sed 's/real//g' | tr -d 's' > saida.txt
