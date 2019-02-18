#docker

# may not need these... not found?
apt-get install \
    linux-image-extra-$(uname -r) \
    linux-image-extra-virtual

apt-get update
#packages to allow apt to install over https
apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
#get key for apt
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
#verify key is:  9DC8 5822 9FC7 DD38 854A E2D8 8D81 803C 0EBF CD88
apt-key fingerprint 0EBFCD88
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
apt-get update
apt-get install -y docker-ce
#add user:
usermod -a -G docker jerome
# have to restart session... ex. "su jerome"
#test install
docker run hello-world

#docker compose
curl -L "https://github.com/docker/compose/releases/download/1.23.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
