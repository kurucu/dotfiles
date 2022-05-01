#!/bin/sh

echo "Cloning repositories..."

SITES=$HOME/Sites
DEVELOPER=$HOME/Developer
XCODE=$HOME/Developer/XCode
PACKAGES=$HOME/Developer/Packages
NOVA=$HOME/Developer/Nova

# Pianta
git clone git@github.com:little-green-man/pianta-app.git $SITES/pianta-app
git clone git@github.com:little-green-man/pianta-clients.git $SITES/pianta-clients
git clone git@gitlab.com:littlegreenman/lgm-website.git $SITES/lgms-website
git clone git@gitlab.com:littlegreenman/about-pianta.git $SITES/pianta-web

git clone git@github.com:little-green-man/linodev4.git $PACKAGES/LinodeV4

# Other Projects
git clone git@github.com:kurucu/iwishiknewthat.git $SITES/iwishiknewthat

# XCode Projects
git clone git@github.com:kurucu/Tronslotor.git $XCODE/Tronslotor

# Nova Taskfinder
git clone git@github.com:little-green-man/nova-taskfinder.git $NOVA/ProjectCommands.novaextension
git clone git@github.com:little-green-man/nova-taskfinder.git $NOVA/nova-taskfinder-images

