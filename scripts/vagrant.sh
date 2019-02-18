cd /tmp
wget https://releases.hashicorp.com/vagrant/2.2.2/vagrant_2.2.2_x86_64.deb
sudo apt install ./vagrant_2.2.2_x86_64.deb
rm vagrant_2.2.2_x86_64.deb

#set path to storage partition
echo "export declare VAGRANT_HOME=\"/media/jeromes/storage/vagrant.d\"" >> ~/.profile
echo >> ~/.profile
