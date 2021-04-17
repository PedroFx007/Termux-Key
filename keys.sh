#!/bin/bash
#apt update -y && apt upgrade -y 
#pkg install figlet -y

Menu () {
printf "\033[0;36m╔══╗──────────────────\033[0;34m╔╦╗──────\n"
printf "\033[0;36m╚╗╔╝╔═╗╔╦╗╔══╗╔╦╗╔╦╗──\033[0;34m║╔╝╔═╗╔╦╗\n"
printf "\033[0;36m─║║─║╩╣║╔╝║║║║║║║╠║╣──\033[0;34m║╚╗║╩╣║║║\n"
printf "\033[0;36m─╚╝─╚═╝╚╝─╚╩╩╝╚═╝╚╩╝──\033[0;34m╚╩╝╚═╝╠╗║\n"
printf "\033[0;36m──────────────────────\033[0;34m──────╚═╝\n"
printf "                              \033[1;37mby Pedrø\n"
printf "\n"
printf "\033[1;34mEscolha uma opção\e[0m\n"
printf "\n"
printf "\033[1;32m1- Adicionar teclas extras (Termux)\n"
printf "\033[1;31m2- Sair \033[1;37m\n"
printf "\n"
printf "\n"
echo -n "-"
read input

case "$input" in
    1) Opcao1 ;;
    2) Sair ;; 
    *) None ;;
    esac
    }

Opcao1 () {
mkdir $HOME/.termux/ ;echo "extra-keys = [['ESC','/','-','HOME','UP','END'],['TAB','CTRL','ALT','LEFT','DOWN','RIGHT']]" >> $HOME/.termux/termux.properties && termux-reload-settings && sleep 1 && logout
clear
printf "\e[1;92mTeclas Adicionadas Com Sucesso \e[0m\n"
}

Sair() {
    clear
printf "\033[1;31mPrograma Encerrado\n"
    exit
}

None() {
echo "Comando Desconhecido..."
sleep 2
clear
Menu
}

clear
Menu

