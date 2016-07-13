#!/bin/bash
# please make sure that version is up to date
wget https://download.jetbrains.com/idea/ideaIU-2016.1.3.tar.gz
tar xvf ideaIU-2016.1.3.tar.gz
mv idea-IU-145.1617.8/ /opt/idea
chmod -R 755 /opt/idea
ln -s /opt/idea/bin/idea.sh /usr/local/bin/idea

