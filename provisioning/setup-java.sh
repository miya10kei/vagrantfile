#!/usr/bin/env bash

# java
echo "#####################"
echo "# Install Java SE 8 #"
echo "#####################"

if [ -e  /usr/lib/jvm/java-8-oracle ]; then	
  echo "Java SE 8 is already instaled."
else
  add-apt-repository -y ppa:webupd8team/java
  apt-get update
  echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
  apt-get install -y oracle-java8-installer
  update-java-alternatives -s java-8-oracle
  echo "Java SE 8 install completed."
fi
