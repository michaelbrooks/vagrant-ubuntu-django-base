#!/bin/bash

# Die on errors
set -e

echo "Installing nodesource repository..."

# Node.js packages from an external repo
# This script also runs apt-get update
apt-get install -y curl
curl -sL https://deb.nodesource.com/setup | bash -

echo "Installing Node.js..."

apt-get install -y nodejs
