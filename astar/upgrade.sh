#!/bin/bash

apt-get update && apt-get upgrade -y
VERSION=${1}
PROJECT=${2}
systemctl stop ${PROJECT}
rm astar-collator*
wget https://github.com/AstarNetwork/Astar/releases/download/v${VERSION}/astar-collator-${VERSION}-ubuntu-x86_64.tar.gz
tar -xf  astar-collator-${VERSION}-ubuntu-x86_64.tar.gz
chmod +x astar-collator
systemctl start ${PROJECT}
rm astar-collator-*
