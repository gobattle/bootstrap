#!/bin/bash

adduser gobattle
adduser gobattle sudo
su gobattle

cd ~

sudo apt-get update
sudo apt-get install zsh -y
sudo apt-get install curl -y
sudo apt-get install git -y
sudo apt-get install tmux -y

sh -c "$(curl -fsSL https://raw.github.com/gobattle/oh-my-zsh/master/tools/install.sh)"


# install python 
apt-get install -y gcc-multilib g++-multilib libffi-dev libffi6 libffi6-dbg python-crypto python-mox3 python-pil python-ply libssl-dev zlib1g-dev libbz2-dev libexpat1-dev libbluetooth-dev libgdbm-dev dpkg-dev quilt autotools-dev libreadline-dev libtinfo-dev libncursesw5-dev tk-dev blt-dev libssl-dev zlib1g-dev libbz2-dev libexpat1-dev libbluetooth-dev libsqlite3-dev libgpm2 mime-support netbase net-tools bzip2
wget https://www.python.org/ftp/python/2.7.11/Python-2.7.11.tgz
tar xfz Python-2.7.11.tgz
cd Python-2.7.11/
./configure --prefix /usr/local/lib/python2.7.11 --enable-ipv6
make
sudo make install

wget https://bootstrap.pypa.io/ez_setup.py -O - | /usr/local/lib/python2.7.11/bin/python
/usr/local/lib/python2.7.11/bin/easy_install pip
/usr/local/lib/python2.7.11/bin/pip install virtualenv

ln -s /usr/local/lib/python2.7.11/bin/easy_install /usr/bin/easy_install
ln -s /usr/local/lib/python2.7.11/bin/pip /usr/bin/pip
