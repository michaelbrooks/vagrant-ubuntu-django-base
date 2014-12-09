#!/bin/sh

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

# Node.js packages from an external repo
# This script also runs apt-get update
apt-get install -y curl
curl -sL https://deb.nodesource.com/setup | bash -

# Prevent prompts from packages
export DEBIAN_FRONTEND=noninteractive

echo "Installing system packages..."
apt-get install -y git build-essential \
                   mysql-server \
                   python python-pip python-dev libmysqlclient-dev \
                   nodejs \
                   emacs23-nox

echo "Updating all packages..."
apt-get update -y

# Global python packages
echo "Installing global python packages..."
pip install virtualenv virtualenvwrapper


# Finish installing virtualenvwrapper (make it start automatically for new shells)
BASHPROFILE=/etc/profile
if grep -q "virtualenvwrapper.sh" "$BASHPROFILE"; then
    echo "virtualenvwrapper already exists in $BASHPROFILE"
else
    cat <<EOF >> "$BASHPROFILE"
# Set up virtualenv and virtualenvwrapper
export VIRTUALENVWRAPPER_PYTHON=\$(command -v python2.7)
export WORKON_HOME=\$HOME/.virtualenvs
export PIP_DOWNLOAD_CACHE=\$HOME/.pip_download_cache
source \$(which virtualenvwrapper_lazy.sh)
EOF
    echo "virtualenvwrapper installed in $BASHPROFILE"
fi
