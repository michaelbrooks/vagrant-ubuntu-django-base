#!/bin/bash

# Die on errors
set -e

loggy "Installing Python..."
apt-get install -y python python-pip python-dev
