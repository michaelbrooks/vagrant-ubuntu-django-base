#!/bin/bash

# This script installs prerequisites on a
# barebones Ubuntu Precise x64 machine.
#  - Git
#  - MySQL
#  - Python 2.7 (with mysql connector)
#  - Node.js (just in case)
#  - Emacs (because obviously)
# It also creates a database for the project
# and a user that can access it.

# Die on errors
set -e

source /vagrant/scripts/functions.sh
source /vagrant/scripts/base.sh
source /vagrant/scripts/screen.sh
source /vagrant/scripts/python.sh
source /vagrant/scripts/mysql.sh
source /vagrant/scripts/nodejs.sh
source /vagrant/scripts/virtualenvwrapper.sh
