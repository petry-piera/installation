#!/bin/sh
# install MySQL client on Amazon Linux AMI
# Created by Petry Sianipar
 
function init(){
	which mysql
	if [ $? == 0 ]
	then
	echo "MySQL has been installed on your machine"
	exit 0
	fi
}

function install(){
	sudo rpm -ivh $1
}
 
function finish(){
	echo "Success Installing MySQL"
	rpm -qa | grep MySQL
	rm -f *.rpm
}
 
init
install MySQL-client-5.1.63-1.glibc23.x86_64.rpm
install MySQL-devel-5.1.63-1.glibc23.x86_64.rpm
install MySQL-embedded-5.1.63-1.glibc23.x86_64.rpm
install MySQL-shared-5.1.63-1.glibc23.x86_64.rpm
install MySQL-test-5.1.63-1.glibc23.x86_64.rpm
finish