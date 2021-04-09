
In openwrt/target/linux/ath79/generic/base-files/lib/upgrade/failsafe_datachk.sh line 15:
	local kernel_mtd=$(find_mtd_index ${KERNEL_PART:-kernel})
                                          ^--------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local kernel_mtd=$(find_mtd_index "${KERNEL_PART:-kernel}")


In openwrt/target/linux/ath79/generic/base-files/lib/upgrade/failsafe_datachk.sh line 16:
	local rootfs_mtd=$(find_mtd_index ${ROOTFS_PART:-rootfs})
                                          ^--------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local rootfs_mtd=$(find_mtd_index "${ROOTFS_PART:-rootfs}")


In openwrt/target/linux/ath79/generic/base-files/lib/upgrade/failsafe_datachk.sh line 18:
	local kernel_offset=$(cat /sys/class/mtd/mtd${kernel_mtd}/offset)
                                                    ^-----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local kernel_offset=$(cat /sys/class/mtd/mtd"${kernel_mtd}"/offset)


In openwrt/target/linux/ath79/generic/base-files/lib/upgrade/failsafe_datachk.sh line 19:
	local rootfs_offset=$(cat /sys/class/mtd/mtd${rootfs_mtd}/offset)
                                                    ^-----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local rootfs_offset=$(cat /sys/class/mtd/mtd"${rootfs_mtd}"/offset)


In openwrt/target/linux/ath79/generic/base-files/lib/upgrade/failsafe_datachk.sh line 22:
		KERNEL_FILE=$($IMAGE_LIST | grep $KERNEL_FILE)
                                                 ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		KERNEL_FILE=$($IMAGE_LIST | grep "$KERNEL_FILE")


In openwrt/target/linux/ath79/generic/base-files/lib/upgrade/failsafe_datachk.sh line 23:
		ROOTFS_FILE=$($IMAGE_LIST | grep $ROOTFS_FILE)
                                                 ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		ROOTFS_FILE=$($IMAGE_LIST | grep "$ROOTFS_FILE")


In openwrt/target/linux/ath79/generic/base-files/lib/upgrade/failsafe_datachk.sh line 26:
	local kernel_size=$($IMAGE_CMD $KERNEL_FILE | wc -c)
                                       ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local kernel_size=$($IMAGE_CMD "$KERNEL_FILE" | wc -c)


In openwrt/target/linux/ath79/generic/base-files/lib/upgrade/failsafe_datachk.sh line 27:
	local rootfs_size=$($IMAGE_CMD $ROOTFS_FILE | wc -c)
                                       ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local rootfs_size=$($IMAGE_CMD "$ROOTFS_FILE" | wc -c)


In openwrt/target/linux/ath79/generic/base-files/lib/upgrade/failsafe_datachk.sh line 33:
	local kernel_md5=$($IMAGE_CMD $KERNEL_FILE | md5sum | cut -d ' ' -f1)
                                      ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local kernel_md5=$($IMAGE_CMD "$KERNEL_FILE" | md5sum | cut -d ' ' -f1)


In openwrt/target/linux/ath79/generic/base-files/lib/upgrade/failsafe_datachk.sh line 34:
	local rootfs_md5=$($IMAGE_CMD $ROOTFS_FILE | dd bs=4k count=$rootfs_blocks iflag=fullblock | md5sum | cut -d ' ' -f1)
                                      ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local rootfs_md5=$($IMAGE_CMD "$ROOTFS_FILE" | dd bs=4k count=$rootfs_blocks iflag=fullblock | md5sum | cut -d ' ' -f1)


In openwrt/target/linux/ath79/generic/base-files/lib/upgrade/failsafe_datachk.sh line 37:
	printf "vmlinux_start_addr 0x%08x\n" $((flash_base + kernel_offset)) >> $setenv_script
        ^-- SC2129: Consider using { cmd1; cmd2; } >> file instead of individual redirects.


In openwrt/target/linux/ath79/generic/base-files/lib/upgrade/failsafe_datachk.sh line 38:
	printf "vmlinux_size 0x%08x\n" ${kernel_size} >> $setenv_script
                                       ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	printf "vmlinux_size 0x%08x\n" "${kernel_size}" >> $setenv_script


In openwrt/target/linux/ath79/generic/base-files/lib/upgrade/failsafe_datachk.sh line 39:
	printf "vmlinux_checksum %s\n" ${kernel_md5} >> $setenv_script
                                       ^-----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	printf "vmlinux_checksum %s\n" "${kernel_md5}" >> $setenv_script


In openwrt/target/linux/ath79/generic/base-files/lib/upgrade/failsafe_datachk.sh line 43:
	printf "rootfs_checksum %s\n" ${rootfs_md5} >> $setenv_script
                                      ^-----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	printf "rootfs_checksum %s\n" "${rootfs_md5}" >> $setenv_script


In openwrt/target/linux/ath79/generic/base-files/lib/upgrade/failsafe_datachk.sh line 56:
	$IMAGE_CMD $KERNEL_FILE | mtd $MTD_ARGS write - ${KERNEL_PART:-kernel}
                   ^----------^ SC2086: Double quote to prevent globbing and word splitting.
                                      ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                                                        ^--------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	$IMAGE_CMD "$KERNEL_FILE" | mtd "$MTD_ARGS" write - "${KERNEL_PART:-kernel}"


In openwrt/target/linux/ath79/generic/base-files/lib/upgrade/failsafe_datachk.sh line 60:
		$IMAGE_CMD $ROOTFS_FILE | mtd $MTD_ARGS $MTD_CONFIG_ARGS -j $UPGRADE_BACKUP write - ${ROOTFS_PART:-rootfs}
                           ^----------^ SC2086: Double quote to prevent globbing and word splitting.
                                              ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                                                        ^--------------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                            ^-------------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                                                    ^--------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		$IMAGE_CMD "$ROOTFS_FILE" | mtd "$MTD_ARGS" "$MTD_CONFIG_ARGS" -j "$UPGRADE_BACKUP" write - "${ROOTFS_PART:-rootfs}"


In openwrt/target/linux/ath79/generic/base-files/lib/upgrade/failsafe_datachk.sh line 62:
		$IMAGE_CMD $ROOTFS_FILE | mtd $MTD_ARGS write - ${ROOTFS_PART:-rootfs}
                           ^----------^ SC2086: Double quote to prevent globbing and word splitting.
                                              ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                ^--------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		$IMAGE_CMD "$ROOTFS_FILE" | mtd "$MTD_ARGS" write - "${ROOTFS_PART:-rootfs}"

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
  https://www.shellcheck.net/wiki/SC2129 -- Consider using { cmd1; cmd2; } >>...
