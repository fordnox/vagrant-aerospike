#!/bin/bash

yum install wget -y
cd /opt
echo "Downloading Aerospike ..."
wget --quiet -O aerospike.tgz "http://www.aerospike.com/latest.php?package=server&os=el6"
tar -xvf aerospike.tgz
cd /opt/aerospike*
ls -la

echo "Installing Aerospike ..."
rpm -i aerospike-community-*
rpm -i aerospike-tools-*

/etc/init.d/aerospike start
echo "Aerospike is ready"