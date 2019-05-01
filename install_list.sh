#! /bin/bash


#update
sudo chmod +x update.sh;
sudo ./update.sh;

#basic packages
sudo apt install sl gcc apt-utils dialog make rsync screen httpie curl lolcat cowsay vlc net-tools htop firejail gparted -y;

#ssh 
#sudo apt install ssh openssh-server -y &&
  #sudo service ssh start
#ssh-keygen -o -a 100 -t ed25519 

#vim
sudo apt install vim -y;

#git
sudo apt install git -y && 
  git config --global user.name "Michael J Harvey" && 
  git config --global user.email "michael4d45@gmail.com" &&
  git config --global core.editor vim;

#Spacevim
curl -sLf https://spacevim.org/install.sh | bash;

#java
sudo apt install default-jdk gradle -y;

#python
sudo apt install python python3 python-pip python-pip3 -y 

#phoenix
wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && 
  sudo dpkg -i erlang-solutions_1.0_all.deb &&
  sudo apt update && 
  sudo apt install esl-erlang elixir -y && 
  mix archive.install hex phx_new 1.4.4 &&
  mix local.hex &&
  sudo apt install postgresql postgresql-contrib npm inotify-tools -y;
#passwrd postgres -p postgres
#sudo -u postgres psql;ALTER USER postgres PASSWORD 'postgres'

#Desktop environment kde
#sudo apt install kde-plasma-desktop plasma-nm -y;

#snap
sudo apt install snapd -y;
sudo snap install postman discord;

#kali linux tools
git clone https://github.com/LionSec/katoolin.git;
sudo cp katoolin/katoolin.py /usr/bin/katoolin;
sudo chmod +x /usr/bin/katoolin;
#sudo katoolin
##1;1;2;back;2;0 
sudo ./update.sh;

sudo dpkg-reconfigure console-setup

sudo reboot;
