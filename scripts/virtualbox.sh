cat <<EOT >> /etc/apt/sources.list
deb https://download.virtualbox.org/virtualbox/debian bionic contrib
EOT
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
apt-get update
apt-get install virtualbox-5.2 -y

