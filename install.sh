sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get update -y
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common \ 
    -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update -y
# If not found error, edit /etc/apt/sources.list and change the apt repo to: deb [arch=amd64] https://download.docker.com/linux/debian buster stable
sudo apt-get install docker-ce docker-ce-cli containerd.io -y
