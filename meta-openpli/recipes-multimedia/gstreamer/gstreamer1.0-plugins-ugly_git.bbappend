DEFAULT_PREFERENCE = "1"

inherit gitpkgv
SRCREV_base = "767200bbbc9b381e35df3613e0281b4e80bf5e39"
PV = "1.9.0.1+git${SRCPV}"
PKGV = "1.9.0.1+git${GITPKGV}"

PR = "r1"

PACKAGECONFIG = " \
    ${GSTREAMER_ORC} \
    a52dec lame mad mpeg2dec \
    cdio dvdread amrnb amrwb x264 \
"