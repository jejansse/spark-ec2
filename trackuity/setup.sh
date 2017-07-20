#!/bin/bash

yum -y install python27-devel

# Fix the symbolic link issues
echo "Ensuring python 2.7 is used..."
ln -f -s /usr/bin/python2.7 /etc/alternatives/python

# Fix for some strange machines without python2.7 we sometimes get
for line in `cat /root/spark-ec2/slaves`; do ssh $line 'yum -y install python27'; done
for line in `cat /root/spark-ec2/slaves`; do ssh $line 'ln -f -s /usr/bin/python2.7 /etc/alternatives/python'; done
# Fix for some strange machines we sometimes get
for line in `cat /root/spark-ec2/slaves`; do ssh $line 'ln -f -s /usr/bin/python /etc/alternatives/python'; done
