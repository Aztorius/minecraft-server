# How to setup a Minecraft Server on Linux

This repository contains some scripts and files used to properly run a Minecraft Server
on your Linux server.

## Requirements

- A Linux distribution with systemd. This has been tested on Debian 11
- wget, java, gcc and make
- An internet connection

## What it will do

- Create a minecraft user on the system
- Download the latest minecraft server in /opt/minecraft/
- Add a systemd service accessible with commands like : `systemctl start minecraft`, `systemctl stop minecraft` and `systemctl status minecraft`

WARNING : please modify the rcon secret_password inside minecraft.service and add the same password to the server.properties `rcon.password` element.
Please also set `enable-rcon=true` inside the server.properties file.
RCON is needed in order to properly shutdown the server when doing a `systemctl stop minecraft`.

You can also optionnaly use the mcops.sh script to have a command line to your server. Please modify the script with your RCON password.

## Installation

Just `sudo ./install.sh`
