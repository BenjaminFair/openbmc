do_generate_static[depends] += "npcm7xx-flashtool-native:do_populate_sysroot"
do_generate_static[depends] += "npcm750-bootblock:do_deploy"

add_flash_pbl() {
	BOOTBLOCK="bootblock.bin"
	FULLBOOTBLOCK="${BOOTBLOCK}.full"

	create_image --bootblock ${DEPLOY_DIR_IMAGE}/${BOOTBLOCK} \
		${IMGDEPLOYDIR}/${FULLBOOTBLOCK}
	dd if=${IMGDEPLOYDIR}/${FULLBOOTBLOCK} \
		of=${IMGDEPLOYDIR}/${IMAGE_NAME}.static.mtd bs=1k conv=notrunc
}

add_flash_uboot() {
	UBOOT="u-boot.${UBOOT_SUFFIX}"
	FULLUBOOT="${UBOOT}.full"

	create_image --uboot ${DEPLOY_DIR_IMAGE}/${UBOOT} \
		${IMGDEPLOYDIR}/${FULLUBOOT}
	dd if=${IMGDEPLOYDIR}/${FULLUBOOT} \
		of=${IMGDEPLOYDIR}/${IMAGE_NAME}.static.mtd \
		bs=1k conv=notrunc seek=44
}
