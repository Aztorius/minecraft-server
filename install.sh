#!/bin/bash

cd "$(dirname "$0")"

# Get, build and install mcrcon
git submodule init
git submodule update
cd mrcron
make
make install

# Create a minecraft user
useradd minecraft

rm -rf /opt/minecraft
mkdir -p /opt/minecraft

cd /opt/minecraft

# Download latest Minecraft server
wget https://piston-data.mojang.com/v1/objects/15c777e2cfe0556eef19aab534b186c0c6f277e1/server.jar

chown minecraft /opt/minecraft

# Install systemd unit file
cp minecraft.service /etc/systemd/system/
systemd daemon-reload
