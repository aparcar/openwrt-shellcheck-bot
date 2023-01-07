
In openwrt/target/linux/ath79/tiny/base-files/lib/upgrade/failsafe_datachk.sh line 13:
	local kernel_mtd=$(find_mtd_index ${KERNEL_PART:-kernel})
                                          ^--------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local kernel_mtd=$(find_mtd_index "${KERNEL_PART:-kernel}")


In openwrt/target/linux/ath79/tiny/base-files/lib/upgrade/failsafe_datachk.sh line 14:
	local rootfs_mtd=$(find_mtd_index ${ROOTFS_PART:-rootfs})
                                          ^--------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local rootfs_mtd=$(find_mtd_index "${ROOTFS_PART:-rootfs}")


In openwrt/target/linux/ath79/tiny/base-files/lib/upgrade/failsafe_datachk.sh line 16:
	local kernel_offset=$(cat /sys/class/mtd/mtd${kernel_mtd}/offset)
                                                    ^-----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local kernel_offset=$(cat /sys/class/mtd/mtd"${kernel_mtd}"/offset)


In openwrt/target/linux/ath79/tiny/base-files/lib/upgrade/failsafe_datachk.sh line 17:
	local rootfs_offset=$(cat /sys/class/mtd/mtd${rootfs_mtd}/offset)
                                                    ^-----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local rootfs_offset=$(cat /sys/class/mtd/mtd"${rootfs_mtd}"/offset)


In openwrt/target/linux/ath79/tiny/base-files/lib/upgrade/failsafe_datachk.sh line 20:
		KERNEL_FILE=$($IMAGE_LIST | grep $KERNEL_FILE)
                                                 ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		KERNEL_FILE=$($IMAGE_LIST | grep "$KERNEL_FILE")


In openwrt/target/linux/ath79/tiny/base-files/lib/upgrade/failsafe_datachk.sh line 21:
		ROOTFS_FILE=$($IMAGE_LIST | grep $ROOTFS_FILE)
                                                 ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		ROOTFS_FILE=$($IMAGE_LIST | grep "$ROOTFS_FILE")


In openwrt/target/linux/ath79/tiny/base-files/lib/upgrade/failsafe_datachk.sh line 24:
	local kernel_size=$($IMAGE_CMD $KERNEL_FILE | wc -c)
                                       ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local kernel_size=$($IMAGE_CMD "$KERNEL_FILE" | wc -c)


In openwrt/target/linux/ath79/tiny/base-files/lib/upgrade/failsafe_datachk.sh line 25:
	local rootfs_size=$($IMAGE_CMD $ROOTFS_FILE | wc -c)
                                       ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local rootfs_size=$($IMAGE_CMD "$ROOTFS_FILE" | wc -c)


In openwrt/target/linux/ath79/tiny/base-files/lib/upgrade/failsafe_datachk.sh line 31:
	local kernel_md5=$($IMAGE_CMD $KERNEL_FILE | md5sum | cut -d ' ' -f1)
                                      ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local kernel_md5=$($IMAGE_CMD "$KERNEL_FILE" | md5sum | cut -d ' ' -f1)


In openwrt/target/linux/ath79/tiny/base-files/lib/upgrade/failsafe_datachk.sh line 32:
	local rootfs_md5=$($IMAGE_CMD $ROOTFS_FILE | dd bs=4k count=$rootfs_blocks iflag=fullblock | md5sum | cut -d ' ' -f1)
                                      ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local rootfs_md5=$($IMAGE_CMD "$ROOTFS_FILE" | dd bs=4k count=$rootfs_blocks iflag=fullblock | md5sum | cut -d ' ' -f1)


In openwrt/target/linux/ath79/tiny/base-files/lib/upgrade/failsafe_datachk.sh line 35:
	printf "vmlinux_start_addr 0x%08x\n" $((flash_base + kernel_offset)) >> $ENV_SCRIPT
        ^-- SC2129: Consider using { cmd1; cmd2; } >> file instead of individual redirects.
                                                                                ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	printf "vmlinux_start_addr 0x%08x\n" $((flash_base + kernel_offset)) >> "$ENV_SCRIPT"


In openwrt/target/linux/ath79/tiny/base-files/lib/upgrade/failsafe_datachk.sh line 36:
	printf "vmlinux_size 0x%08x\n" ${kernel_size} >> $ENV_SCRIPT
                                       ^------------^ SC2086: Double quote to prevent globbing and word splitting.
                                                         ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	printf "vmlinux_size 0x%08x\n" "${kernel_size}" >> "$ENV_SCRIPT"


In openwrt/target/linux/ath79/tiny/base-files/lib/upgrade/failsafe_datachk.sh line 37:
	printf "vmlinux_checksum %s\n" ${kernel_md5} >> $ENV_SCRIPT
                                       ^-----------^ SC2086: Double quote to prevent globbing and word splitting.
                                                        ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	printf "vmlinux_checksum %s\n" "${kernel_md5}" >> "$ENV_SCRIPT"


In openwrt/target/linux/ath79/tiny/base-files/lib/upgrade/failsafe_datachk.sh line 39:
	printf "rootfs_start_addr 0x%08x\n" $((flash_base + rootfs_offset)) >> $ENV_SCRIPT
                                                                               ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	printf "rootfs_start_addr 0x%08x\n" $((flash_base + rootfs_offset)) >> "$ENV_SCRIPT"


In openwrt/target/linux/ath79/tiny/base-files/lib/upgrade/failsafe_datachk.sh line 40:
	printf "rootfs_size 0x%08x\n" ${rootfs_size} >> $ENV_SCRIPT
                                                        ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	printf "rootfs_size 0x%08x\n" ${rootfs_size} >> "$ENV_SCRIPT"


In openwrt/target/linux/ath79/tiny/base-files/lib/upgrade/failsafe_datachk.sh line 41:
	printf "rootfs_checksum %s\n" ${rootfs_md5} >> $ENV_SCRIPT
                                      ^-----------^ SC2086: Double quote to prevent globbing and word splitting.
                                                       ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	printf "rootfs_checksum %s\n" "${rootfs_md5}" >> "$ENV_SCRIPT"


In openwrt/target/linux/ath79/tiny/base-files/lib/upgrade/failsafe_datachk.sh line 45:
	[ -n "$SKIP_HASH" ] || fw_setenv -s $ENV_SCRIPT || {
                                            ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ -n "$SKIP_HASH" ] || fw_setenv -s "$ENV_SCRIPT" || {


In openwrt/target/linux/ath79/tiny/base-files/lib/upgrade/failsafe_datachk.sh line 53:
	$IMAGE_CMD $KERNEL_FILE | mtd $MTD_ARGS write - ${KERNEL_PART:-kernel}
                   ^----------^ SC2086: Double quote to prevent globbing and word splitting.
                                      ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                                                        ^--------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	$IMAGE_CMD "$KERNEL_FILE" | mtd "$MTD_ARGS" write - "${KERNEL_PART:-kernel}"


In openwrt/target/linux/ath79/tiny/base-files/lib/upgrade/failsafe_datachk.sh line 58:
		$IMAGE_CMD $ROOTFS_FILE | mtd $MTD_ARGS $MTD_CONFIG_ARGS -j $UPGRADE_BACKUP write - ${ROOTFS_PART:-rootfs}
                           ^----------^ SC2086: Double quote to prevent globbing and word splitting.
                                              ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                                                        ^--------------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                            ^-------------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                                                    ^--------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		$IMAGE_CMD "$ROOTFS_FILE" | mtd "$MTD_ARGS" "$MTD_CONFIG_ARGS" -j "$UPGRADE_BACKUP" write - "${ROOTFS_PART:-rootfs}"


In openwrt/target/linux/ath79/tiny/base-files/lib/upgrade/failsafe_datachk.sh line 60:
		$IMAGE_CMD $ROOTFS_FILE | mtd $MTD_ARGS write - ${ROOTFS_PART:-rootfs}
                           ^----------^ SC2086: Double quote to prevent globbing and word splitting.
                                              ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                ^--------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		$IMAGE_CMD "$ROOTFS_FILE" | mtd "$MTD_ARGS" write - "${ROOTFS_PART:-rootfs}"

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
  https://www.shellcheck.net/wiki/SC2129 -- Consider using { cmd1; cmd2; } >>...
