DESCRIPTION = "Linux kernel for Nuvoton NPCM7xx"
SECTION = "kernel"
LICENSE = "GPLv2"

PROVIDES += "virtual/kernel"

KCONFIG_MODE="--alldefconfig"

KSRC ?= "git://github.com/openbmc/linux;protocol=git;branch=${KBRANCH}"
SRC_URI = "${KSRC}"
SRC_URI_append_npcm7xx = " file://defconfig"

LINUX_VERSION_EXTENSION ?= "-${SRCREV}"

PV = "${LINUX_VERSION}+git${SRCPV}"

inherit kernel
require recipes-kernel/linux/linux-yocto.inc

LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"
