#!/bin/bash

# Die on errors
set -e

echo "Installing MySQL server..."
apt-get install -y mysql-server \
                   libmysqlclient-dev
