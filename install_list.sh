#! /bin/bash

ssh-keygen -o -a 100 -t ed25519 

#update
sudo apt update -y &&
  sudo apt upgrade -y &&
  sudo apt autoremove -y;

#basic packages
sudo apt install sl make rsync screen httpie curl lolcat cowsay vlc net-tools htop -y;

#vim
sudo apt install vim -y && 
  curl -sLf https://spacevim.org/install.sh | bash;

#git
sudo apt install git -y && 
  git config --global user.name "Michael J Harvey" && 
  git config --global user.email "michael4d45@gmail.com" &&
  git config --global core.editor vim;

#java
sudo apt install default-jdk gradle -y;

#python
sudo apt install python python3 python-pip python-pip3 -y 

#phoenix
wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && 
  sudo dpkg -i erlang-solutions_1.0_all.deb &&
  sudo apt update && 
  sudo apt install esl-erlang elixir -y && 
  mix archive.install hex phx_new 1.4.3 &&
  mix local.hex &&
  sudo apt install postgresql postgresql-contrib npm inotify-tools -y;
#passwrd postgres -p postgres
#sudo -u postgres psql;ALTER USER postgres PASSWORD 'postgres'

#Desktop environment kde
sudo apt install kde-plasma-desktop plasma-nm -y;

sudo snap install postman;

#kali linux tools
git clone https://github.com/LionSec/katoolin.git;
sudo cp katoolin/katoolin.py /usr/bin/katoolin;
sudo chmod +x /usr/bin/katoolin;
#sudo katoolin
##1;2;1 

sudo reboot;
