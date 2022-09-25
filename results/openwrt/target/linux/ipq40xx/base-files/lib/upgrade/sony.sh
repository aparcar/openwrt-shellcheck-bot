
In openwrt/target/linux/ipq40xx/base-files/lib/upgrade/sony.sh line 14:
	cur_index=$(dd if=${cfgpart} bs=1 count=1 skip=$offset 2> /dev/null | hexdump -e '"%d"')
                          ^--------^ SC2086: Double quote to prevent globbing and word splitting.
                                                       ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	cur_index=$(dd if="${cfgpart}" bs=1 count=1 skip="$offset" 2> /dev/null | hexdump -e '"%d"')


In openwrt/target/linux/ipq40xx/base-files/lib/upgrade/sony.sh line 15:
	if [ ${index} != ${cur_index} ]; then
             ^------^ SC2086: Double quote to prevent globbing and word splitting.
                         ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	if [ "${index}" != "${cur_index}" ]; then


In openwrt/target/linux/ipq40xx/base-files/lib/upgrade/sony.sh line 18:
			dd of=${cfgpart} bs=1 count=1 seek=$offset conv=notrunc 2>/dev/null
                              ^--------^ SC2086: Double quote to prevent globbing and word splitting.
                                                           ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			dd of="${cfgpart}" bs=1 count=1 seek="$offset" conv=notrunc 2>/dev/null


In openwrt/target/linux/ipq40xx/base-files/lib/upgrade/sony.sh line 25:
	cur_index=$(dd if=${cfgpart} bs=1 count=1 skip=$offset 2> /dev/null | hexdump -e '"%d"')
                          ^--------^ SC2086: Double quote to prevent globbing and word splitting.
                                                       ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	cur_index=$(dd if="${cfgpart}" bs=1 count=1 skip="$offset" 2> /dev/null | hexdump -e '"%d"')


In openwrt/target/linux/ipq40xx/base-files/lib/upgrade/sony.sh line 26:
	if [ ${index} != ${cur_index} ]; then
             ^------^ SC2086: Double quote to prevent globbing and word splitting.
                         ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	if [ "${index}" != "${cur_index}" ]; then


In openwrt/target/linux/ipq40xx/base-files/lib/upgrade/sony.sh line 29:
			dd of=${cfgpart} bs=1 count=1 seek=$offset conv=notrunc 2>/dev/null
                              ^--------^ SC2086: Double quote to prevent globbing and word splitting.
                                                           ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			dd of="${cfgpart}" bs=1 count=1 seek="$offset" conv=notrunc 2>/dev/null


In openwrt/target/linux/ipq40xx/base-files/lib/upgrade/sony.sh line 65:
	board_dir=$(tar tf $tar_file | grep -m 1 '^sysupgrade-.*/$')
                           ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	board_dir=$(tar tf "$tar_file" | grep -m 1 '^sysupgrade-.*/$')


In openwrt/target/linux/ipq40xx/base-files/lib/upgrade/sony.sh line 69:
	tar xf $tar_file ${board_dir}/kernel -O > $kernel_dev
               ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                         ^----------^ SC2086: Double quote to prevent globbing and word splitting.
                                                  ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	tar xf "$tar_file" "${board_dir}"/kernel -O > "$kernel_dev"


In openwrt/target/linux/ipq40xx/base-files/lib/upgrade/sony.sh line 72:
	tar xf $tar_file ${board_dir}/root -O > $rootfs_dev
               ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                         ^----------^ SC2086: Double quote to prevent globbing and word splitting.
                                                ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	tar xf "$tar_file" "${board_dir}"/root -O > "$rootfs_dev"


In openwrt/target/linux/ipq40xx/base-files/lib/upgrade/sony.sh line 75:
	mkfs.ext4 -F -L rootfs_data $rootfs_data_dev
                                    ^--------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	mkfs.ext4 -F -L rootfs_data "$rootfs_data_dev"


In openwrt/target/linux/ipq40xx/base-files/lib/upgrade/sony.sh line 79:
		mount -t ext4 $rootfs_data_dev /tmp/new_root && {
                              ^--------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		mount -t ext4 "$rootfs_data_dev" /tmp/new_root && {

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
