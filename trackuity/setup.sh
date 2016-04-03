#!/bin/bash

# Fix the symbolic link issues
echo "Ensuring python 2.7 is used..."
ln -f -s /usr/bin/python2.7 /etc/alternatives/python
