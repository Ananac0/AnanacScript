
#!/bin/bash

echo -e "\e[41mВведите название адаптера для смены MAC-Address:\e[0m"
read DeviceName

echo -e "\e[41mSwich MAC-Address random: Start...\e[0m"

sudo airmon-ng stop wlan0mon

sudo ifconfig wlan0 down
echo -e "\e[41m$DeviceName отключен.\e[0m"

echo -e "\e[41m$DeviceName сменил MAC-Address:\e[0m"
sudo macchanger -r $DeviceName

sudo ifconfig wlan0 up
echo -e "\e[41m$DeviceName включен.\e[0m"

sudo service network-manager restart
echo -e "\e[41mСервис network-manager перезапущен.\e[0m"

echo -e "\e[41mГотово!\e[0m"
