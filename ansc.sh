
#!/bin/bash

Version="0.2"

case "$1" in
 "-S" | "-s" | "--Setup"  | "--setup"  )       mv ./ansc.sh /usr/local/bin;
                                               echo "Установлено";
                                               exit;;

 "-V" | "-v" | "-Version" | "-version" )       echo "Version = $Version";
                                               exit;;
esac

clear

echo "AnanacScript v0.2"
echo ""
echo ""
echo ""
echo -e "\e[31m         ▄▄▄       ███▄    █  ▄▄▄       ███▄    █  ▄▄▄       ▄████▄    ██████  ▄████▄   ██▀███   ██▓ ██▓███  ▄▄▄█████▓  \e[0m"
echo -e "\e[31m        ▒████▄     ██ ▀█   █ ▒████▄     ██ ▀█   █ ▒████▄    ▒██▀ ▀█  ▒██    ▒ ▒██▀ ▀█  ▓██ ▒ ██▒▓██▒▓██░  ██▒▓  ██▒ ▓▒  \e[0m"
echo -e "\e[31m        ▒██  ▀█▄  ▓██  ▀█ ██▒▒██  ▀█▄  ▓██  ▀█ ██▒▒██  ▀█▄  ▒▓█    ▄ ░ ▓██▄   ▒▓█    ▄ ▓██ ░▄█ ▒▒██▒▓██░ ██▓▒▒ ▓██░ ▒░  \e[0m"
echo -e "\e[31m        ░██▄▄▄▄██ ▓██▒  ▐▌██▒░██▄▄▄▄██ ▓██▒  ▐▌██▒░██▄▄▄▄██ ▒▓▓▄ ▄██▒  ▒   ██▒▒▓▓▄ ▄██▒▒██▀▀█▄  ░██░▒██▄█▓▒ ▒░ ▓██▓ ░   \e[0m"
echo -e "\e[31m         ▓█   ▓██▒▒██░   ▓██░ ▓█   ▓██▒▒██░   ▓██░ ▓█   ▓██▒▒ ▓███▀ ░▒██████▒▒▒ ▓███▀ ░░██▓ ▒██▒░██░▒██▒ ░  ░  ▒██▒ ░   \e[0m"
echo -e "\e[31m         ▒▒   ▓▒█░░ ▒░   ▒ ▒  ▒▒   ▓▒█░░ ▒░   ▒ ▒  ▒▒   ▓▒█░░ ░▒ ▒  ░▒ ▒▓▒ ▒ ░░ ░▒ ▒  ░░ ▒▓ ░▒▓░░▓  ▒▓▒░ ░  ░  ▒ ░░     \e[0m"
echo -e "\e[31m          ▒   ▒▒ ░░ ░░   ░ ▒░  ▒   ▒▒ ░░ ░░   ░ ▒░  ▒   ▒▒ ░  ░  ▒   ░ ░▒  ░ ░  ░  ▒     ░▒ ░ ▒░ ▒ ░░▒ ░         ░      \e[0m"
echo -e "\e[31m          ░   ▒      ░   ░ ░   ░   ▒      ░   ░ ░   ░   ▒   ░        ░  ░  ░  ░          ░░   ░  ▒ ░░░         ░        \e[0m"
echo -e "\e[31m              ░  ░         ░       ░  ░         ░       ░  ░░ ░            ░  ░ ░         ░      ░                      \e[0m"
echo ""
echo ""
echo ""

echo -e "  \e[32m[1] Перевести адаптер в режим мониторинга\e[0m"

echo -e "  \e[32m[2] Перевести адаптер с режима мониторинга\e[0m"

echo -e "  \e[32m[3] Перезапустить Network-Manager\e[0m"

echo -e "  \e[32m[4] *Создать фейковую ТД\e[0m"

echo -e "  \e[32m[5] *[]\e[0m"

echo -e "  \e[32m[6] *[]\e[0m"

echo -e "  \e[32m[7] *[]\e[0m"

echo -e "  \e[32m[8] *[]\e[0m"

echo -e "  \e[32m[9] *[]\e[0m"


echo ""

echo -e "  \e[41mВведите номер команды: \e[0m"



read Event

case "$Event" in
 "1" ) echo -e "  \e[41mВведите названия адаптера: \e[0m";
       read Adapter;
       echo -e "  \e[41mОтключаем ненужные процесы...\e[0m";
       airmon-ng check kill;
       echo -e "  \e[41mПереводим адаптер в режим мониторинга...\e[0m";
       airmon-ng start $Adapter;
       echo -e "  \e[41mГотово!\e[0m";;

 "2" ) echo -e "  \e[41mВведите название адаптера: \e[0m";
       read Adapter;
       echo -e "  \e[41mПереводим адаптер с режима мониторинга...\e[0m";
       airmon-ng stop $Adapter;
       echo -e "  \e[41mПерезапускаем Network-Manager...\e[0m";
       service network-manager restart;
       echo -e "  \e[41mГотово!\e[0m";;

 "3" ) echo -e "  \e[41mПерезапускаем Network-Manager...\e[0m";
       service network-manager restart;
       echo -e "  \e[41mГотово!\e[0m";;

 "4" ) ;;

 "5" ) ;;

 "6" ) ;;

 "7" ) ;;

 "8" ) ;;

 "9" ) ;;
esac



