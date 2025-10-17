LICENSE = "GPLv2"

inherit core-image

DESCRIPTION = "Basenode image should autoconnect to WiFi and start sshd on boot"

IMAGE_FEATURES += "ssh-server-openssh"

IMAGE_INSTALL += " \
	nano \
	networkmanager \
	linux-firmware \
	libgpiod \
	libgpiod-tools \
	dhcpcd \
"
