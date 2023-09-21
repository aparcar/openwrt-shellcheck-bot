
In openwrt/target/linux/ipq40xx/base-files/lib/upgrade/platform.sh line 11:
		local ubidev=$(nand_find_ubi $CI_UBIPART)
                                             ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		local ubidev=$(nand_find_ubi "$CI_UBIPART")


In openwrt/target/linux/ipq40xx/base-files/lib/upgrade/platform.sh line 12:
		local asus_root=$(nand_find_volume $ubidev jffs2)
                                                   ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		local asus_root=$(nand_find_volume "$ubidev" jffs2)


In openwrt/target/linux/ipq40xx/base-files/lib/upgrade/platform.sh line 40:
		local ubi_rootfs=$(nand_find_volume $ubidev ubi_rootfs)
                                                    ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		local ubi_rootfs=$(nand_find_volume "$ubidev" ubi_rootfs)


In openwrt/target/linux/ipq40xx/base-files/lib/upgrade/platform.sh line 41:
		local ubi_rootfs_data=$(nand_find_volume $ubidev ubi_rootfs_data)
                                                         ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		local ubi_rootfs_data=$(nand_find_volume "$ubidev" ubi_rootfs_data)


In openwrt/target/linux/ipq40xx/base-files/lib/upgrade/platform.sh line 64:
	local board_dir=$(tar tf $tar_file | grep -m 1 '^sysupgrade-.*/$')
                                 ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local board_dir=$(tar tf "$tar_file" | grep -m 1 '^sysupgrade-.*/$')


In openwrt/target/linux/ipq40xx/base-files/lib/upgrade/platform.sh line 67:
	tar Oxf $tar_file ${board_dir}/root | mtd write - rootfs
                ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                          ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	tar Oxf "$tar_file" "${board_dir}"/root | mtd write - rootfs


In openwrt/target/linux/ipq40xx/base-files/lib/upgrade/platform.sh line 75:
	local board_dir=$(tar tf $tar_file | grep -m 1 '^sysupgrade-.*/$')
                                 ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local board_dir=$(tar tf "$tar_file" | grep -m 1 '^sysupgrade-.*/$')


In openwrt/target/linux/ipq40xx/base-files/lib/upgrade/platform.sh line 78:
	tar Oxf $tar_file ${board_dir}/kernel | mtd write - kernel
                ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                          ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	tar Oxf "$tar_file" "${board_dir}"/kernel | mtd write - kernel


In openwrt/target/linux/ipq40xx/base-files/lib/upgrade/platform.sh line 81:
		tar Oxf $tar_file ${board_dir}/root | mtd -j "$UPGRADE_BACKUP" write - rootfs
                        ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                                  ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		tar Oxf "$tar_file" "${board_dir}"/root | mtd -j "$UPGRADE_BACKUP" write - rootfs


In openwrt/target/linux/ipq40xx/base-files/lib/upgrade/platform.sh line 83:
		tar Oxf $tar_file ${board_dir}/root | mtd write - rootfs
                        ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                                  ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		tar Oxf "$tar_file" "${board_dir}"/root | mtd write - rootfs


In openwrt/target/linux/ipq40xx/base-files/lib/upgrade/platform.sh line 96:
	local kernel_len=$(tar xf "$1" ${board_dir}/kernel -O | wc -c)
                                       ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local kernel_len=$(tar xf "$1" "${board_dir}"/kernel -O | wc -c)


In openwrt/target/linux/ipq40xx/base-files/lib/upgrade/platform.sh line 99:
	tar xf "$1" ${board_dir}/kernel -O | ubiformat "$fw_mtd" -y -S $kernel_len -f -
                    ^----------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                       ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	tar xf "$1" "${board_dir}"/kernel -O | ubiformat "$fw_mtd" -y -S "$kernel_len" -f -

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
