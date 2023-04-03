#!/bin/bash
for pasta in contos critica cronica miscelanea poesia romance teatro traducao;
do
    cat ../Dados/machado/$pasta/*.txt >> obra_completa.txt
done

cat obra_completa.txt | wc -w > resposta_ex_1
rm obra_completa.txt
