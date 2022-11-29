#!/bin/bash
# Enable Repositories
dnf install fedora-workstation-repositories
dnf install 'dnf-command(config-manager)'
dnf config-manager --set-enabled google-chrome

# Install the software
dnf install discord google-chrome-stable
