#!/bin/bash


<<msg 
This is a script to create user 
with passowrd
msg

echo "===========create a user==========="

echo "Enter username:$1"

echo "Enter Password:$2"

sudo useradd -m "$1"

echo -e "$2\n$2" | sudo passwd "$1"

echo "===========User created==========="
