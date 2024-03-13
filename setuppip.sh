#!/bin/bash

# Get the current username
USERNAME=$(whoami)
echo installing depedencies
# Install Python dependencies
pip install -r requirements.txt
pip list
echo installing git
# Install Git
sudo apt-get update
sudo apt-get install git
echo extracting files
# Extract and copy cli.py
unzip ~/Downloads/autogpt.zip cli.py
mkdir -p ~/Downloads/autogpt-$USERNAME
cp cli.py ~/Downloads/autogpt-$USERNAME

# Check Git version
git --version
echo running git repo scripts
# Initialize Git repository and add cli.py
cd ~/Downloads/autogpt-$USERNAME || exit
git init
git add cli.py
git commit -m "Add cli.py file"
echo done