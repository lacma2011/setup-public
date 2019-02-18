# this will mount a storage labeled "storage" for user "jerome" in machine "jeromes"
# the mount will have jerome as user and group

mkdir /media/jeromes/storage
chown jerome:jerome /media/jeromes/storage
chmod 775 /media/jeromes/storage
# get the UUID with blkid
#OUTPUT="$(blkid | grep storage | sed -n 's/.*UUID=\"\([^\"]*\)\".*/\1/p')"
OUTPUT="$(/sbin/blkid | /bin/grep 'storage' | /bin/grep -o -E 'UUID=\"[a-zA-Z|0-9|\-]*' | cut -c 7- | head -1)"
echo "${OUTPUT}"
echo "UUID=${OUTPUT}     /media/jeromes/storage   auto    rw,user,auto,barrier=0    0    0   #barrier=0 for docker mysql speed" >> /etc/fstab
echo >> /etc/fstab  #extra line to prevent warning

