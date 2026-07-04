<<info 
this is the script of installing packages thourgh argument 
info

echo "start installing $1"

sudo apt-get update > /dev/null
sudo apt-get install $1 -y >/dev/null

echo "installation of $1 is completed"

echo "also upgrade to lastest version"

sudo apt-get upgrade $1 > /dev/null

echo "all set all things is installed and upgraded"
