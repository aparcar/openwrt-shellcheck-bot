
In openwrt/target/linux/ipq806x/base-files/lib/upgrade/zyxel.sh line 8:
	if read cmdline < /proc/cmdline; then
           ^--^ SC2162: read without -r will mangle backslashes.


In openwrt/target/linux/ipq806x/base-files/lib/upgrade/zyxel.sh line 33:
	local board_dir=$(tar tf $tar_file | grep -m 1 '^sysupgrade-.*/$')
                                 ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local board_dir=$(tar tf "$tar_file" | grep -m 1 '^sysupgrade-.*/$')


In openwrt/target/linux/ipq806x/base-files/lib/upgrade/zyxel.sh line 37:
	tar xf $tar_file ${board_dir}/kernel -O >$kernel
               ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                         ^----------^ SC2086: Double quote to prevent globbing and word splitting.
                                                 ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	tar xf "$tar_file" "${board_dir}"/kernel -O >"$kernel"


In openwrt/target/linux/ipq806x/base-files/lib/upgrade/zyxel.sh line 40:
	tar xf $tar_file ${board_dir}/root -O >"${rootfs}"
               ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                         ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	tar xf "$tar_file" "${board_dir}"/root -O >"${rootfs}"


In openwrt/target/linux/ipq806x/base-files/lib/upgrade/zyxel.sh line 43:
	local offset=$(tar xf $tar_file ${board_dir}/root -O | wc -c)
                              ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                                        ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local offset=$(tar xf "$tar_file" "${board_dir}"/root -O | wc -c)


In openwrt/target/linux/ipq806x/base-files/lib/upgrade/zyxel.sh line 44:
	[ $offset -lt 65536 ] && {
          ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ "$offset" -lt 65536 ] && {


In openwrt/target/linux/ipq806x/base-files/lib/upgrade/zyxel.sh line 45:
		echo Wrong size for rootfs: $offset
                                            ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		echo Wrong size for rootfs: "$offset"


In openwrt/target/linux/ipq806x/base-files/lib/upgrade/zyxel.sh line 52:
	losetup -o $offset $loopdev $rootfs || {
                   ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                           ^------^ SC2086: Double quote to prevent globbing and word splitting.
                                    ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	losetup -o "$offset" "$loopdev" "$rootfs" || {


In openwrt/target/linux/ipq806x/base-files/lib/upgrade/zyxel.sh line 59:
	mkfs.ext4 -F -L rootfs_data $loopdev
                                    ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	mkfs.ext4 -F -L rootfs_data "$loopdev"


In openwrt/target/linux/ipq806x/base-files/lib/upgrade/zyxel.sh line 61:
	mount -t ext4 $loopdev /tmp/new_root && {
                      ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	mount -t ext4 "$loopdev" /tmp/new_root && {


In openwrt/target/linux/ipq806x/base-files/lib/upgrade/zyxel.sh line 70:
			printf "\xff" >$dualflagmtd
                                       ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			printf "\xff" >"$dualflagmtd"


In openwrt/target/linux/ipq806x/base-files/lib/upgrade/zyxel.sh line 73:
			printf "\x01" >$dualflagmtd
                                       ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			printf "\x01" >"$dualflagmtd"


In openwrt/target/linux/ipq806x/base-files/lib/upgrade/zyxel.sh line 78:
	losetup -d $loopdev >/dev/null 2>&1
                   ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	losetup -d "$loopdev" >/dev/null 2>&1


In openwrt/target/linux/ipq806x/base-files/lib/upgrade/zyxel.sh line 94:
		[ -b $dualflagmtd ] || return 1
                     ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		[ -b "$dualflagmtd" ] || return 1


In openwrt/target/linux/ipq806x/base-files/lib/upgrade/zyxel.sh line 119:
	zyxel_do_flash $tar_file $kernel $rootfs $dualflagmtd
                       ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                                                 ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	zyxel_do_flash "$tar_file" $kernel $rootfs "$dualflagmtd"

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
  https://www.shellcheck.net/wiki/SC2162 -- read without -r will mangle backs...
