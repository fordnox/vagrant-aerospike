#!/bin/bash

yum install gcc -y
yum install python-devel -y
yum install python-setuptools -y
easy_install markupsafe
easy_install paramiko

cd /opt
echo "Downloading Monitoring Console"
wget -q -O amc.rpm http://aerospike.com/amc/3.3.1/aerospike-management-console-3.3.1-el5.x86_64.rpm
rpm -ivh amc.rpm

/etc/init.d/amc start
echo "Monitoring Console Ready"
