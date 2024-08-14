#!/bin/bash
set -e

sudo apt update
sudo apt list --upgradable
sudo apt upgrade
python3 --version
sudo apt install python3-pip
sudo snap install discord
pip --version
sudo apt install -y zip 
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
nvm --version
export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm --version
nvm install 20
sudo apt install git
git clone --depth=1 https://github.com/tfutils/tfenv.git ~/.tfenv
echo 'export PATH="$HOME/.tfenv/bin:$PATH"' >> ~/.bashrc 
source .bashrc 
tfenv install 1.4.2
tfenv use 1.4.2
terraform --version
sudo apt install apt-transport-https ca-certificates software-properties-common -y
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo groupadd docker
sudo usermod -aG docker $USER

curl -s "https://get.sdkman.io" | bash
source "/home/matana/.sdkman/bin/sdkman-init.sh"

sdk install 17.0.12-amzn
sdk install java 17.0.12-amzn
java --version

sdk install gradle 5.6

sudo apt install vim
