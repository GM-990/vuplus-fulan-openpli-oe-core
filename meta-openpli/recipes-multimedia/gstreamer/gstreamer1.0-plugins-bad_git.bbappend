DEFAULT_PREFERENCE = "1"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += " \
	file://0001-rtmp-fix-seeking-and-potential-segfault.patch \
"

SRCREV_base = "795f63659ccb68d85ae3e2195c61017f07a9ec0c"
PV = "1.8.0+git${SRCPV}"

PACKAGECONFIG = "\
 ${PACKAGECONFIG_GL} \
 ${@bb.utils.contains('DISTRO_FEATURES', 'wayland', 'wayland', '', d)} \
 ${@bb.utils.contains('DISTRO_FEATURES', 'bluetooth', 'bluez', '', d)} \
 ${@bb.utils.contains('DISTRO_FEATURES', 'directfb', 'directfb', '', d)} \
 orc curl neon sndfile \
 hls sbc dash bz2 smoothstreaming \
 faac faad libmms dash webp rtmp \
 "
