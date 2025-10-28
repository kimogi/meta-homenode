FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI:append = " file://ntpserver.conf "

do_install:append() {
	install -d ${D}${sysconfdir}/systemd/timesyncd.conf.d/
	install -m 0644 ${WORKDIR}/ntpserver.conf ${D}${sysconfdir}/systemd/timesyncd.conf.d/
}
