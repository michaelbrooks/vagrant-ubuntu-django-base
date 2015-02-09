#!/bin/bash

loggy "Installing screen..."
apt-get install -y screen

cat >> /etc/screenrc << EOF

# Turn off the copyright message
startup_message off

# Make every shell a login shell
shell -\$SHELL

EOF
