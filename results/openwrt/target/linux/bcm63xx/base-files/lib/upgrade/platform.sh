
In openwrt/target/linux/bcm63xx/base-files/lib/upgrade/platform.sh line 34:
	local kernel_mtd="$(find_mtd_index $CI_KERNPART)"
                                           ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local kernel_mtd="$(find_mtd_index "$CI_KERNPART")"


In openwrt/target/linux/bcm63xx/base-files/lib/upgrade/platform.sh line 41:
	local board_dir=$(tar tf $tar_file | grep -m 1 '^sysupgrade-.*/$')
                                 ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local board_dir=$(tar tf "$tar_file" | grep -m 1 '^sysupgrade-.*/$')


In openwrt/target/linux/bcm63xx/base-files/lib/upgrade/platform.sh line 44:
	local kernel_length=$(tar xf $tar_file ${board_dir}/kernel -O | wc -c 2> /dev/null)
                                     ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                                               ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local kernel_length=$(tar xf "$tar_file" "${board_dir}"/kernel -O | wc -c 2> /dev/null)


In openwrt/target/linux/bcm63xx/base-files/lib/upgrade/platform.sh line 45:
	local rootfs_length=$(tar xf $tar_file ${board_dir}/root -O | wc -c 2> /dev/null)
                                     ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                                               ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local rootfs_length=$(tar xf "$tar_file" "${board_dir}"/root -O | wc -c 2> /dev/null)


In openwrt/target/linux/bcm63xx/base-files/lib/upgrade/platform.sh line 52:
	flash_erase -j /dev/mtd${kernel_mtd} 0 0
                               ^-----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	flash_erase -j /dev/mtd"${kernel_mtd}" 0 0


In openwrt/target/linux/bcm63xx/base-files/lib/upgrade/platform.sh line 53:
	tar xf $tar_file ${board_dir}/kernel -O | nandwrite /dev/mtd${kernel_mtd} -
               ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                         ^----------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                    ^-----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	tar xf "$tar_file" "${board_dir}"/kernel -O | nandwrite /dev/mtd"${kernel_mtd}" -


In openwrt/target/linux/bcm63xx/base-files/lib/upgrade/platform.sh line 55:
	local rootfs_type="$(identify_tar "$tar_file" ${board_dir}/root)"
                                                      ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local rootfs_type="$(identify_tar "$tar_file" "${board_dir}"/root)"


In openwrt/target/linux/bcm63xx/base-files/lib/upgrade/platform.sh line 61:
	local root_ubivol="$(nand_find_volume $ubidev $CI_ROOTPART)"
                                              ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                                      ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local root_ubivol="$(nand_find_volume "$ubidev" "$CI_ROOTPART")"


In openwrt/target/linux/bcm63xx/base-files/lib/upgrade/platform.sh line 62:
	tar xf $tar_file ${board_dir}/root -O | \
               ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                         ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	tar xf "$tar_file" "${board_dir}"/root -O | \


In openwrt/target/linux/bcm63xx/base-files/lib/upgrade/platform.sh line 63:
		ubiupdatevol /dev/$root_ubivol -s $rootfs_length -
                                  ^----------^ SC2086: Double quote to prevent globbing and word splitting.
                                                  ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		ubiupdatevol /dev/"$root_ubivol" -s "$rootfs_length" -

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
