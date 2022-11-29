#!/bin/bash
# Check if the user is root
if [[ $(/usr/bin/id -u) -ne 0 ]]; then
    echo "Please run as root."
    exit
fi

# SETTINGS & REPOS
# Call the script to enable RPMFusion repositories
source scripts/rpmfusion.sh
echo "Finished calling the script to enable RPMFusion"
dnf upgrade -y
echo "Updated the system"

# Call the script to enable Flathub repositories
source scripts/flathub.sh
echo "Finished calling the script to enable Flathub"

# Call the script to set basic networking choices (not finished)
# source scripts/network.sh
# echo "Finished calling the script to set basic networking choices"


# SOFTWARE
# Call the scripts to install common free software
source scripts/software/free.sh
source scripts/software/wine.sh
echo "Finished calling the scripts to install common free software"

# Ask the user if they want to install common nonfree software
read -p "Do you want to install common nonfree software? (y or n): " NONFREE
if [ $NONFREE == "y" ]; 
        then
	# Call the script to install the software
	source scripts/software/nonfree.sh
	echo "Finished calling the script to install common nonfree software"
fi

# Ask the user if they want to install game-related software
read -p "Do you want to install game-related software? (y or n): " GAME
if [ $GAME == "y" ];
        then
	# Call the script to install the software
	source scripts/software/games.sh
	echo "Finished calling the script to install game-related software"
fi

echo "Finished."

# end of script
