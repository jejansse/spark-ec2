#!/bin/bash

yum -y install python27
yum -y install python27-devel
curl -O https://bootstrap.pypa.io/get-pip.py
python27 get-pip.py
pip install jupyter

