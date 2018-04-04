UBRANCH = "npcm7xx"
SRC_URI = "git://github.com/Nuvoton-Israel/u-boot.git;branch=${UBRANCH}"

EXTRA_OEMAKE_class-target = 'CROSS_COMPILE="${TARGET_PREFIX}" HOSTCC="${BUILD_CC} ${BUILD_FLAGS} ${BUILD_LDFLAGS}" CC="${CC} ${CFLAGS} ${LDFLAGS}" STRIP=true V=1'

SRCREV = "${AUTOREV}"
PV .= "+.${UBRANCH}.+"
