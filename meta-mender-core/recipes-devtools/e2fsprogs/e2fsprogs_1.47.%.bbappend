FILESEXTRAPATHS:prepend := "${THISDIR}/patches:"
SRC_URI:append = "${@bb.utils.contains( \
    'MENDER_FEATURES', \
    'mender-image', \
    ' file://dont_use_metadata_csum.patch', \
    '', \
    d \
)}"
