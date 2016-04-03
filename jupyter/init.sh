#!/bin/bash

yum -y install python27-devel
easy_install-2.7 ipython==4.0.0
easy_install-2.7 notebook==4.0.0
easy_install-2.7 ipywidgets
easy_install-2.7 jupyter

