set -e

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
