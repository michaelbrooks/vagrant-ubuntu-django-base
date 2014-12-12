#!/bin/bash

# Die on errors
set -e

# Prevent prompts from packages
export DEBIAN_FRONTEND=noninteractive

echo "Updating all packages..."
apt-get update -y

echo "Installing system packages..."
apt-get install -y git build-essential curl \
                   emacs23-nox
