
In openwrt/target/linux/ipq40xx/base-files/lib/upgrade/netgear.sh line 20:
	netgear_orbi_do_flash $tar_file $kernel $rootfs
                              ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                                        ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                                ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	netgear_orbi_do_flash "$tar_file" "$kernel" "$rootfs"


In openwrt/target/linux/ipq40xx/base-files/lib/upgrade/netgear.sh line 39:
	local board_dir=$(tar tf $tar_file | grep -m 1 '^sysupgrade-.*/$')
                                 ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local board_dir=$(tar tf "$tar_file" | grep -m 1 '^sysupgrade-.*/$')


In openwrt/target/linux/ipq40xx/base-files/lib/upgrade/netgear.sh line 43:
	tar xf $tar_file ${board_dir}/kernel -O >$kernel
               ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                         ^----------^ SC2086: Double quote to prevent globbing and word splitting.
                                                 ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	tar xf "$tar_file" "${board_dir}"/kernel -O >"$kernel"


In openwrt/target/linux/ipq40xx/base-files/lib/upgrade/netgear.sh line 46:
	tar xf $tar_file ${board_dir}/root -O >"${rootfs}"
               ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                         ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	tar xf "$tar_file" "${board_dir}"/root -O >"${rootfs}"


In openwrt/target/linux/ipq40xx/base-files/lib/upgrade/netgear.sh line 49:
	local offset=$(tar xf $tar_file ${board_dir}/root -O | wc -c)
                              ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                                        ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local offset=$(tar xf "$tar_file" "${board_dir}"/root -O | wc -c)


In openwrt/target/linux/ipq40xx/base-files/lib/upgrade/netgear.sh line 50:
	[ $offset -lt 65536 ] && {
          ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ "$offset" -lt 65536 ] && {


In openwrt/target/linux/ipq40xx/base-files/lib/upgrade/netgear.sh line 58:
	losetup -o $offset $loopdev $rootfs || {
                   ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                           ^------^ SC2086: Double quote to prevent globbing and word splitting.
                                    ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	losetup -o "$offset" "$loopdev" "$rootfs" || {


In openwrt/target/linux/ipq40xx/base-files/lib/upgrade/netgear.sh line 65:
	mkfs.ext4 -F -L rootfs_data $loopdev
                                    ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	mkfs.ext4 -F -L rootfs_data "$loopdev"


In openwrt/target/linux/ipq40xx/base-files/lib/upgrade/netgear.sh line 67:
	mount -t ext4 $loopdev /tmp/new_root && {
                      ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	mount -t ext4 "$loopdev" /tmp/new_root && {


In openwrt/target/linux/ipq40xx/base-files/lib/upgrade/netgear.sh line 74:
	losetup -d $loopdev >/dev/null 2>&1
                   ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	losetup -d "$loopdev" >/dev/null 2>&1

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
