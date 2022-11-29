#!/bin/bash
# Randomize the MAC Address
[device]
wifi.scan-rand-mac-address=yes

[connection]
wifi.cloned-mac-address=stable
ethernet.cloned-mac-address=stable
connection.stable-id=${CONNECTION}/${BOOT}
# Restart NetworkManager
systemctl restart NetworkManager

# I only added randomizing the MAC address function for now.
