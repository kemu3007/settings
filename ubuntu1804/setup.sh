sudo apt update
sudo apt -y upgrade
sudo apt -y install vim
sudo apt -y install git
sudo apt -y install guake
sudo apt -y install curl
sudo apt-get -y install xsel

# pyenv 
sudo apt -y install build-essential libffi-dev libssl-dev zlib1g-dev liblzma-dev libbz2-dev libreadline-dev libsqlite3-dev
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
source ~/.bashrc
pyenv install 3.7.6
pyenv global 3.7.6

# nodebrew
curl -L git.io/nodebrew | perl - setup
echo 'export PATH=$HOME/.nodebrew/current/bin:$PATH' >> ~/.bashrc
source ~/.bashrc
nodebrew install-binary stable
nodebrew use stable
npm -g install @angular/cli
sudo sysctl fs.inotify.max_user_watches=524288
sudo sysctl -p

# docker
sudo apt install docker.io
sudo groupadd docker
sudo gpasswd -a $USER docker
sudo systemctl restart docker

# docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# ssh keygen
ssh-keygen -t rsa
cat .ssh/id_rsa.pub | xsel --clipboard --input

# english directory
LANG=C xdg-user-dirs-gtk-update

# sudo reboot -h now
