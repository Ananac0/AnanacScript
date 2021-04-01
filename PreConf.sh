#!/bin/bash

echo -e "\e[32mStart preparing configuration...\e[0m"

echo -e "\e[32mEnter home directory...\e[0m"
cd

#apt installing 1
echo -e "\e[32mapt updating...\e[0m"
sudo apt update -y

echo -e "\e[32mapt upgrading...\e[0m"
sudo apt upgrade -y

echo -e "\e[32mapt full-upgrading...\e[0m"
sudo apt full-upgrade -y

echo -e "\e[32mapt auto-removing...\e[0m"
sudo apt autoremove -y
#apt installing 1 end

#apt installing 2
echo -e "\e[32mapt updating...\e[0m"
sudo apt update -y

echo -e "\e[32mapt upgrading...\e[0m"
sudo apt upgrade -y

echo -e "\e[32mapt full-upgrading...\e[0m"
sudo apt full-upgrade -y

echo -e "\e[32mapt auto-removing...\e[0m"
sudo apt autoremove -y
#apt installing 2 end

echo -e "\e[32mapt installing leafpad...\e[0m"
sudo apt install leafpad -y

echo -e "\e[32mapt installing gufw...\e[0m"
sudo apt install gufw -y

echo -e "\e[32mapt installing tor...\e[0m"
sudo apt install tor -y

echo -e "\e[32msystemctl starting tor...\e[0m"
sudo systemctl start tor

echo -e "\e[32mGit cloning TorIpTables2.py...\e[0m"
git clone https://github.com/ruped24/toriptables2

echo -e "\e[32mMoving TorIpTables2.py to bin...\e[0m"
cd toriptables2
sudo mv toriptables2.py /usr/local/bin
cd

echo -e "\e[32mGit cloning Fluxion...\e[0m"
git clone https://github.com/FluxionNetwork/fluxion

echo -e "\e[32mGit cloning Airgeddon...\e[0m"
git clone https://github.com/v1s1t0r1sh3r3/airgeddon

echo -e "\e[32mGit cloning HiddenEye-Legacy...\e[0m"
git clone https://github.com/DarkSecDevelopers/HiddenEye-Legacy

sudo leafpad /etc/systemd/logind.conf
sudo leafpad /etc/NetworkManager/NetworkManager.conf

echo -e "\e[32mPreparing configuration successfully!\e[0m"




