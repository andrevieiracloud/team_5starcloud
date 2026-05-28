#!/bin/bash
set -x

clear
echo "Digite nome do arquivo"
sleep 2
read arquivo
touch "$arquivo.txt"

echo "Agora vamos editar o arquivo"
sleep 2
clear

while true; do
    echo -e "Arquivo em uso: $arquivo.txt\n"
sleep 3
    echo "1 para adicionar texto no arquivo"
 sleep 3
    echo "2 para sobrescrever texto"
sleep 3
    echo "3 ler o arquivo"
sleep 2
    echo "Digite a opção desejada"
    read opcao

case $opcao in
    1) echo "Digite oq será adicionado no arquivo"
    sleep 3
        read texto_ad
        echo "$texto_ad" >> "$arquivo.txt"
    sleep 3
        echo "Texto adicionado!"
        sleep 2
        clear ;;

    2) echo "Tem CERTEZA que deseja sobrescrever tudo que existe?"
    sleep 3
        echo "Digite S para sim e N para não"
    
        read  SN
        if [ "$SN" == "S"] || [ "$SN" == "s" ]; then
            echo "Digite o texto que sobrescreverá tudo:"
            read texto_sob
            echo "$texto_sob" > "$arquivo.txt"
   sleep 2
            echo "Texto sobrescrito com sucesso"
            sleep 2
            clear 
        else
            echo "Você digitou nada"
            clear
        fi  ;;

    3) echo "Vamos ler o arquivo"
        echo "Pressione ENTER para sair da leitura"
        sleep 2
        cat "$arquivo.txt"
        read nada
        clear ;;

esac
done