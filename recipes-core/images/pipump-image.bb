# pipump-image.bb
LICENSE = "GPLv2"

inherit core-image

DESCRIPTION = "An image to run PiPump for Vertical Garden"

IMAGE_FEATURES += "ssh-server-openssh"

IMAGE_INSTALL += " \
	nano \
	networkmanager \
	linux-firmware \
	libgpiod \
	libgpiod-tools \
	dhcpcd \
"
