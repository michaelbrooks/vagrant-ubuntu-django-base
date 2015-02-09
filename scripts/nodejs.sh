#!/bin/bash

# Die on errors
set -e

loggy "Installing nodesource repository..."

# Node.js packages from an external repo
# This script also runs apt-get update
apt-get install -y curl
curl -sL https://deb.nodesource.com/setup | bash -

loggy "Installing Node.js..."

apt-get install -y nodejs
