#!/bin/bash

echo "install sjasmplus for the container"
set -x

# Prepare temporary directory
cd /tmp
mkdir -p codespaces-tmp
cd  codespaces-tmp

# Fetch sjasmplus
wget -O  sjasmplus-1.20.3-src.tar.xz https://github.com/z00m128/sjasmplus/releases/download/v1.20.3/sjasmplus-1.20.3-src.tar.xz
tar xf sjasmplus-1.20.3-src.tar.xz

# Build
cd sjasmplus-1.20.3
make clean
make
sudo make install

# Clean up
rm -rf /tmp/codespaces-tmp


echo "sjasmplus is installed"
