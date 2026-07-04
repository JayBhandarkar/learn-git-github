#!/bin/bash

#use of variables 

j="jay"
branch="software"
clg="MIT acadmey of Engineering"
echo "my name is $j."
echo "i want to became a $branch Engineer"
echo "I am study at $clg and branch is $branch "

#show Environmental variable (pre-difined variable)

echo "ye tari ka hota hai current user show karne ka using environment variable find karne ka dollaruser karte hai "
echo "$USER"

#input form user

read -p "waise app ke clg ka naam kya tha?" cllg
echo "mere clg ka naam $cllg hai"

#argument

echo "mera naam hai $0"
echo "mera naam hai $1"
echo "mera naam hai $2"
echo "hum sabka naam hai $@"
echo "aur bhi $# log hai"


