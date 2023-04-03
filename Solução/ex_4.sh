#!/bin/bash

cat ../Dados/machado/contos/macn001.txt | sed 's/ /\n/g' > palavrasemlinhas.txt
tr '[:upper:]' '[:lower:]' < palavrasemlinhas.txt | sed 's/[[:punct:]]//g' > palavraspadronizadas.txt
sed -i '/^$/d' palavraspadronizadas.txt
tr '[:upper:]' '[:lower:]' < palavraspadronizadas.txt | sed 's/[[:punct:]]//g' | tr ' ' '\n' | LC_ALL=C sort | uniq -c | awk '{print $1 ", " $2}' > qtdpalavras.txt
LC_ALL=C sort -t ',' -k 1 -n qtdpalavras.txt > resposta_ex_4

rm palavrasemlinhas.txt
rm palavraspadronizadas.txt
rm qtdpalavras.txt




