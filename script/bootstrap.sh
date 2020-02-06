#!/usr/bin/env bash

# script/bootstrap: Resolve all dependencies that the application requires to run.

set -e

cd "$(dirname "$0")/.."

if [ "$(uname -s)" = "Darwin" ]; then
  command -v pip >/dev/null 2>&1 || {
    echo "Installing pip"
    curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
    sudo python get-pip.py
    rm ./get-pip.py
  }
  command -v ansible >/dev/null 2>&1 || {
    echo "Installing Ansible"
    sudo pip install ansible
    sudo pip install paramiko
  }
fi

exit 0;
