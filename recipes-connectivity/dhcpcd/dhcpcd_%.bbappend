inherit systemd

SYSTEMD_AUTO_ENABLE = "enable"
SYSTEMD_SERVICE:${PN} = "dhcpcd.service"

FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
SRC_URI:append = " file://dhcpcd.service "
FILES:${PN} += "${systemd_unitdir}/system/dhcpcd.service"

do_install:append() {
	install -d ${D}/${systemd_unitdir}/system
	install -m 0644 ${WORKDIR}/dhcpcd.service ${D}/${systemd_unitdir}/system
}
