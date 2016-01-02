#!/bin/bash

# Debian/BSD Requirements / Updates + monitoring tools: atop & htop
sudo apt-get update && apt-get install -y vim-nox git-core curl atop htop build-essential libssl-dev linux-image-amd64 linux-headers-amd64

# OSX, Debian & RHEL: Host OS Tuning
sudo sysctl -w vm.max_map_count=262144

# Install VI Prefs - Recommended - Optional
curl -o- https://raw.githubusercontent.com/justsml/system-setup-tools/master/modules/vim-update.sh | sudo bash

# Backup Profile init scripts before appending new scripts below
mkdir ~/backups
cp ~/.bash* ~/backups/

# Debian/BSD:  Append Shell Environment Shortcuts + XTERM Colors
curl -sSL https://raw.githubusercontent.com/justsml/system-setup-tools/master/home-scripts/.bashrc > ~/.bashrc
curl -sSL https://raw.githubusercontent.com/justsml/system-setup-tools/master/home-scripts/.bash_aliases > ~/.bash_aliases

# Read into current shell (login steps already missed the aliases file)
source ~/.bashrc

# Docker pre reqs
# sudo apt-get install -y linux-image-virtual linux-image-extra-virtual
# Install Docker, straight from the horses mouth
curl -sSL https://get.docker.com/ | sh
