#!/bin/bash

# Die on errors
set -e

loggy "Installing MySQL server..."
apt-get install -y mysql-server \
                   libmysqlclient-dev
