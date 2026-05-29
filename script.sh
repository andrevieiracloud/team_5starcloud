#!/bin/bash
set -x

clear

echo "Digite nome do arquivo:"
sleep 2
read arquivo

touch "$arquivo.txt"

echo "Criando arquivo..."
sleep 2

echo "Abrindo o editor de arquivos..."
sleep 2

clear

while true; do
    echo -e "Arquivo em uso: $arquivo.txt\n"
    echo "1 - Para adicionar texto no arquivo"
    sleep 3
    echo "2 - Para sobrescrever texto"
    sleep 3
    echo "3 - Ler o arquivo"
    sleep 3
    echo "4 - Sair do programa"
    sleep 3
    echo "Digite a opção desejada:"
    sleep 3
    read opcao
    
case $opcao in
    1) echo "Digite o texto que sera adicionado:"
        read texto_ad

        echo "Processando..."
        sleep 2
        
        echo "$texto_ad" >> "$arquivo.txt"
        
        echo "Texto adicionado com sucesso!"
        sleep 2
         ;;

    2) echo "ATENCAO: Isso apagara todo o conteudo atual."
        sleep 3
        echo "Digite S para Confirmar e N para Cancelar"
        read  SN
        
        if [ "$SN" == "S" ] || [ "$SN" == "s" ]; then
        
            echo "Digite o novo texto:"
            read texto_sob

            echo "Sobrescrevendo arquivo..."
            sleep 2
            
            echo "$texto_sob" > "$arquivo.txt"
            
            echo "Arquivo atualizado com sucesso!"
            sleep 2
        else
            echo "Operacao cancelada."
            sleep 2
            clear
        fi  ;;

    3) echo "Carregando conteudo do arquivo..."
        sleep 2
        clear

        cat "$arquivo.txt"
        echo "Pressione ENTER para voltar ao menu"
        read nada
         ;;

    4) echo "Saindo do programa..."
        sleep 2
        clear
        exit 0 ;;

esac
done
