#!/bin/bash

# Die on errors
set -e

# Global python packages
loggy "Installing global python packages for virtualenv..."
pip install virtualenv virtualenvwrapper


# Finish installing virtualenvwrapper (make it start automatically for new shells)
BASHPROFILE=/etc/profile
if grep -q "virtualenvwrapper.sh" "$BASHPROFILE"; then
    echo "virtualenvwrapper already exists in $BASHPROFILE"
else
    cat >> "$BASHPROFILE" << EOF

# Set up virtualenv and virtualenvwrapper
export VIRTUALENVWRAPPER_PYTHON=\$(command -v python2.7)
export WORKON_HOME=\$HOME/.virtualenvs
export PIP_DOWNLOAD_CACHE=\$HOME/.pip_download_cache
source \$(which virtualenvwrapper_lazy.sh)
EOF
    echo "virtualenvwrapper installed in $BASHPROFILE"
fi
