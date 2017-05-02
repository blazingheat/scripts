#!/bin/bash
echo 'Installing Java OpenJDK 8'

sudo apt-add-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install -y oracle-java8-installer

echo "deb http://www.apache.org/dist/cassandra/debian 310x main" | sudo tee -a /etc/apt/sources.list.d/cassandra.sources.list

curl https://www.apache.org/dist/cassandra/KEYS | sudo apt-key add -

sudo apt-get update

sudo apt-get install -y cassandra
