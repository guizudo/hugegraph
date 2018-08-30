#!/bin/bash

# download hbase
if [ ! -f $HOME/downloads/hbase-2.0.1-bin.tar.gz ]; then
  sudo wget -O $HOME/downloads/hbase-2.0.1-bin.tar.gz http://apache.cs.utah.edu/hbase/2.0.1/hbase-2.0.1-bin.tar.gz;
fi

# decompress hbase
sudo mv $HOME/downloads/hbase-2.0.1-bin.tar.gz hbase-2.0.1-bin.tar.gz && tar xzf hbase-2.0.1-bin.tar.gz

# config hbase
sudo rm -f hbase-2.0.1/conf/hbase-site.xml && sudo mv .travis/hbase-site.xml hbase-2.0.1/conf

# start hbase service
sudo hbase-2.0.1/bin/start-hbase.sh
