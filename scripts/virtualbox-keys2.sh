mokutil --test-key MOK.der
sudo modprobe vboxdrv

# add folders to storage partition
mkdir /media/jeromes/storage/Virtualbox\ VMs
vboxmanage setproperty machinefolder /media/jeromes/storage/Virtualbox\ VMs

