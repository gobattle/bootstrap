set -e

sudo apt-get install software-properties-common -y
sudo add-apt-repository ppa:nginx/stable

sudo apt-get install build-essential python-dev -y
sudo apt-get install nginx -y

sudo pip install uwsgi

sudo apt-get install supervisor
