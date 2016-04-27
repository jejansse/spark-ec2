#!/bin/bash

yum -y install python27-devel

# Fix the symbolic link issues
echo "Ensuring python 2.7 is used..."
ln -f -s /usr/bin/python2.7 /etc/alternatives/python

for line in `cat /root/spark-ec2/slaves`; do ssh $line 'ln -f -s /usr/bin/python2.7 /etc/alternatives/python'; done
