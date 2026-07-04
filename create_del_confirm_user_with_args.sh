#!/bin/bash
<<msg
This is a script to create, delete, show user is delete or not user
with passowrd
msg


function createuser {
	echo "===========create a user==========="

	echo "Enter username:$1"


	echo "Enter Password:$2"


	sudo useradd -m "$1"

	echo -e "$2\n$2" | sudo passwd "$1"
	
	echo "===========User created==========="
}
function userdelete {

	sudo userdel "$1"


	echo "==========user Deleted successfully============="
}

function cheackuserexits {

	if [ $(cat /etc/passwd | grep -i "$1" | wc | awk '{print $1}') == 0 ];

	then
	
		echo "user deleted"

	else 
	
		echo "user can't deleted"

	fi
}

createuser "$1" "$2"
userdelete "$1" "$2"
cheackuserexits "$1" "$2"
