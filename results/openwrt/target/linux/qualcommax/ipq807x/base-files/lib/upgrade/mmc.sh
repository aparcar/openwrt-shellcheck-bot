
In openwrt/target/linux/qualcommax/ipq807x/base-files/lib/upgrade/mmc.sh line 21:
	[ -z "$kernel" ] && kernel=$(find_mmc_part ${kernelname})
                                                   ^-----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ -z "$kernel" ] && kernel=$(find_mmc_part "${kernelname}")


In openwrt/target/linux/qualcommax/ipq807x/base-files/lib/upgrade/mmc.sh line 22:
	[ -z "$rootfs" ] && rootfs=$(find_mmc_part ${rootfsname})
                                                   ^-----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ -z "$rootfs" ] && rootfs=$(find_mmc_part "${rootfsname}")


In openwrt/target/linux/qualcommax/ipq807x/base-files/lib/upgrade/mmc.sh line 27:
	mmc_do_flash $tar_file $kernel $rootfs
                     ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                               ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                       ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	mmc_do_flash "$tar_file" "$kernel" "$rootfs"


In openwrt/target/linux/qualcommax/ipq807x/base-files/lib/upgrade/mmc.sh line 44:
	local board_dir=$(tar tf $tar_file | grep -m 1 '^sysupgrade-.*/$')
                                 ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local board_dir=$(tar tf "$tar_file" | grep -m 1 '^sysupgrade-.*/$')


In openwrt/target/linux/qualcommax/ipq807x/base-files/lib/upgrade/mmc.sh line 48:
	tar xf $tar_file ${board_dir}/kernel -O >$kernel
               ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                         ^----------^ SC2086: Double quote to prevent globbing and word splitting.
                                                 ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	tar xf "$tar_file" "${board_dir}"/kernel -O >"$kernel"


In openwrt/target/linux/qualcommax/ipq807x/base-files/lib/upgrade/mmc.sh line 51:
	tar xf $tar_file ${board_dir}/root -O >"${rootfs}"
               ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                         ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	tar xf "$tar_file" "${board_dir}"/root -O >"${rootfs}"


In openwrt/target/linux/qualcommax/ipq807x/base-files/lib/upgrade/mmc.sh line 54:
	local offset=$(tar xf $tar_file ${board_dir}/root -O | wc -c)
                              ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                                        ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local offset=$(tar xf "$tar_file" "${board_dir}"/root -O | wc -c)


In openwrt/target/linux/qualcommax/ipq807x/base-files/lib/upgrade/mmc.sh line 55:
	[ $offset -lt 65536 ] && {
          ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ "$offset" -lt 65536 ] && {


In openwrt/target/linux/qualcommax/ipq807x/base-files/lib/upgrade/mmc.sh line 56:
		echo Wrong size for rootfs: $offset
                                            ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		echo Wrong size for rootfs: "$offset"


In openwrt/target/linux/qualcommax/ipq807x/base-files/lib/upgrade/mmc.sh line 63:
	losetup -o $offset $loopdev $rootfs || {
                   ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                           ^------^ SC2086: Double quote to prevent globbing and word splitting.
                                    ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	losetup -o "$offset" "$loopdev" "$rootfs" || {


In openwrt/target/linux/qualcommax/ipq807x/base-files/lib/upgrade/mmc.sh line 70:
	mkfs.ext4 -F -L rootfs_data $loopdev
                                    ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	mkfs.ext4 -F -L rootfs_data "$loopdev"


In openwrt/target/linux/qualcommax/ipq807x/base-files/lib/upgrade/mmc.sh line 72:
	mount -t ext4 $loopdev /tmp/new_root && {
                      ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	mount -t ext4 "$loopdev" /tmp/new_root && {


In openwrt/target/linux/qualcommax/ipq807x/base-files/lib/upgrade/mmc.sh line 79:
	losetup -d $loopdev >/dev/null 2>&1
                   ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	losetup -d "$loopdev" >/dev/null 2>&1

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
