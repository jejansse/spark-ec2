#!/bin/bash

yum -y update
yum -y install gcc python27-devel

# Fix the symbolic link issues
echo "Ensuring python 2.7 is used..."
ln -f -s /usr/bin/python2.7 /etc/alternatives/python

# Fix for some strange machines without python2.7 we sometimes get
for line in `cat /root/spark-ec2/slaves`; do ssh $line 'yum -y update'; done
for line in `cat /root/spark-ec2/slaves`; do ssh $line 'yum -y install python27'; done
for line in `cat /root/spark-ec2/slaves`; do ssh $line 'ln -f -s /usr/bin/python2.7 /etc/alternatives/python'; done
# Fix for some strange machines we sometimes get
#for line in `cat /root/spark-ec2/slaves`; do ssh $line 'ln -f -s /usr/bin/python /etc/alternatives/python'; done

# Install some dependencies for processing
easy_install-2.7 pip
pip install setuptools==33.1.1
pip install zc.buildout
pip install numpy==1.14.2
pip install scipy==1.0.1
pip install scikit-learn==0.19.1
echo 'export LC_CTYPE="en_US.utf8"' >> /root/.bash_profile  # fix for buidout failing on some python libs when locale is set to UTF-8
