UBRANCH = "npcm7xx"
SRC_URI = "git://github.com/Nuvoton-Israel/u-boot.git;branch=${UBRANCH}"

EXTRA_OEMAKE = 'CROSS_COMPILE="${TARGET_PREFIX}" HOSTCC="${BUILD_CC} ${BUILD_CFLAGS} ${BUILD_LDFLAGS}" CC="${CC} ${CFLAGS} ${LDFLAGS}" STRIP=true V=1'

SRCREV = "${AUTOREV}"
PV .= "+.${UBRANCH}.+"
