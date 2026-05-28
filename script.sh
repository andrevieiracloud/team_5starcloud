#!/bin/bash
set -x


echo "Digite nome do arquivo"
read arquivo
touch "$arquivo.txt"

echo "Agora vamos editar o arquivo"
sleep 2


while true; do
    echo -e "Arquivo em uso: $arquivo.txt\n"
    echo "1 para adicionar texto no arquivo"
    echo "2 para sobrescrever texto"
    echo "3 ler o arquivo"
    echo "Digite a opção desejada"
    read opcao

case $opcao in
    1) echo "Digite oq será adicionado no arquivo"
        read texto_ad
        echo "$texto_ad" >> "$arquivo.txt"
        echo "Texto adicionado!"
        sleep 2
         ;;

    2) echo "Tem CERTEZA que deseja sobrescrever tudo que existe?"
        echo "Digite S para sim e N para não"
        read  SN
        if [ "$SN" == "S" ] || [ "$SN" == "s" ]; then
            echo "Digite o texto que sobrescreverá tudo:"
            read texto_sob
            echo "$texto_sob" > "$arquivo.txt"
            echo "Texto sobrescrito com sucesso"
            sleep 2
             
        else
            echo "Você digitou nada"
            
        fi  ;;

    3) echo "Vamos ler o arquivo"
        echo "Pressione ENTER para sair da leitura"
        sleep 2
        cat "$arquivo.txt"
        read nada
         ;;

esac
done