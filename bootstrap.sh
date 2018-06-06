#!/bin/sh
sudo apt-get update &&
    sudo apt-get install -y python3-pip python3-setuptools &&
    sudo apt-get autoclean -y &&
    sudo apt-get clean -y &&
    sudo rm -rf /var/lib/apt/lists/* \
        /var/cache/apt/pkgcache.bin \
        /var/cache/apt/srcpkgcache.bin &&
    pip3 install wheel &&
    sudo sh -c 'echo "export PATH=\"\$PATH:/home/vagrant/.local/bin\"" >>/etc/profile'
