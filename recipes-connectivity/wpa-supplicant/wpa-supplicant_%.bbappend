FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI_prepend := "\
	file://void_wpa_supplicant.conf \
	file://nodbus-override.conf \
	"

do_install:append() {
	install -d ${D}${sysconfdir}
	install -m 600 ${WORKDIR}/void_wpa_supplicant.conf ${D}${sysconfdir}/wpa_supplicant.conf
	install -d ${D}${sysconfdir}/systemd/system/wpa_supplicant.service.d
	install -m 600 ${WORKDIR}/nodbus-override.conf ${D}${sysconfdir}/systemd/system/wpa_supplicant.service.d/override.conf
}
