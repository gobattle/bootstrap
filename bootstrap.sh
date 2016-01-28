#!/bin/bash

# modify ubuntu source
sudo cp /etc/apt/sources.list /etc/apt/sources.list_backup
sudo echo "
deb http://mirrors.aliyun.com/ubuntu/ trusty main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ trusty-security main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ trusty-updates main restricted universe multiverse 
deb http://mirrors.aliyun.com/ubuntu/ trusty-proposed main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ trusty-backports main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ trusty main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ trusty-security main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ trusty-updates main restricted universe multiverse 
deb-src http://mirrors.aliyun.com/ubuntu/ trusty-proposed main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ trusty-backports main restricted universe multiverse
"
sudo apt-get update

sudo apt-get install zsh -y
sudo apt-get install curl -y
sudo apt-get install git -y
sudo apt-get install tmux -y
sudo apt-get install zsh -y

# customize

adduser gobattle
adduser gobattle sudo
su gobattle

sudo cd ~
sh -c "$(curl -fsSL https://raw.github.com/gobattle/oh-my-zsh/master/tools/install.sh)"

# for ycm
sudo apt-get install build-essential cmake python-dev
cd ~/.vim/bundle/YouCompleteMe
./install.py
