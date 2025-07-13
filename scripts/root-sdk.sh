#!/bin/bash

set -e

cd /opt

# Get rootAVD
git clone https://gitlab.com/newbit/rootAVD.git && chmod +x /opt/rootAVD/rootAVD.sh

# Roots SDK Image with rootAVD
/opt/rootAVD/rootAVD.sh $(find /opt/android | grep 'ramdisk.img$' | cut -f1)