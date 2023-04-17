#!/bin/bash

# Prerequisite
dnf clean all
dnf update

# Repositories
rpm --import https://dl.winehq.org/wine-builds/winehq.key
source /etc/os-release
dnf config-manager --add-repo https://dl.winehq.org/wine-builds/fedora/${VERSION_ID}/winehq.repo

# WineHQ
dnf install winehq-stable
