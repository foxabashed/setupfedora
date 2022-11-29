#!/bin/bash

# Install Wine
function install_wine_package {
	install_package "Wine" "wine" install_wine
}

# Install Winetricks
function install_winetricks {
	install_package "Winetricks" "winetricks" install_wine
}

# Install all fonts with winetricks
function winetricks_allfonts {
	# Install all fonts
	winetricks allfonts
}
