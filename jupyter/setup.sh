#!/bin/bash

echo 'export CURRENT_IP=`hostname -i`' >> ~/.bash_profile
echo 'alias jupyter="IPYTHON=1 IPYTHON_OPTS=\"notebook --NotebookApp.open_browser=False --NotebookApp.port=8880 --NotebookApp.ip=${CURRENT_IP}\" /root/spark/bin/pyspark"' >> ~/.bash_profile
source ~/.bash_profile

