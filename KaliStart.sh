
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

