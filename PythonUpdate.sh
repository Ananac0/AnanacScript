
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
