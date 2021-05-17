
In openwrt/target/linux/octeon/base-files/lib/upgrade/platform.sh line 8:
	if read cmdline < /proc/cmdline; then
           ^--^ SC2162: read without -r will mangle backslashes.


In openwrt/target/linux/octeon/base-files/lib/upgrade/platform.sh line 55:
	if [ $board = "itus,shield-router" ]; then
             ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	if [ "$board" = "itus,shield-router" ]; then


In openwrt/target/linux/octeon/base-files/lib/upgrade/platform.sh line 60:
		tar -Oxf $tar_file "$board_dir/kernel" > /boot/$kernel
                         ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                                                               ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		tar -Oxf "$tar_file" "$board_dir/kernel" > /boot/"$kernel"


In openwrt/target/linux/octeon/base-files/lib/upgrade/platform.sh line 62:
		mount -t vfat /dev/$kernel /boot
                                   ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		mount -t vfat /dev/"$kernel" /boot


In openwrt/target/linux/octeon/base-files/lib/upgrade/platform.sh line 64:
		[ -f /boot/vmlinux.64 -a ! -L /boot/vmlinux.64 ] && {
                                      ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/target/linux/octeon/base-files/lib/upgrade/platform.sh line 70:
		tar xf $tar_file $board_dir/kernel -O > /boot/vmlinux.64
                       ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                                 ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		tar xf "$tar_file" "$board_dir"/kernel -O > /boot/vmlinux.64


In openwrt/target/linux/octeon/base-files/lib/upgrade/platform.sh line 75:
	tar xf $tar_file $board_dir/root -O | dd of="${rootfs}" bs=4096
               ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                         ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	tar xf "$tar_file" "$board_dir"/root -O | dd of="${rootfs}" bs=4096


In openwrt/target/linux/octeon/base-files/lib/upgrade/platform.sh line 104:
	platform_do_flash $tar_file $board $kernel $rootfs
                          ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                                    ^----^ SC2086: Double quote to prevent globbing and word splitting.
                                                   ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	platform_do_flash "$tar_file" "$board" $kernel "$rootfs"


In openwrt/target/linux/octeon/base-files/lib/upgrade/platform.sh line 123:
		local kernel_length=$(tar xf $tar_file $board_dir/kernel -O | wc -c 2> /dev/null)
                                             ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                                                       ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		local kernel_length=$(tar xf "$tar_file" "$board_dir"/kernel -O | wc -c 2> /dev/null)


In openwrt/target/linux/octeon/base-files/lib/upgrade/platform.sh line 124:
		local rootfs_length=$(tar xf $tar_file $board_dir/root -O | wc -c 2> /dev/null)
                                             ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                                                       ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		local rootfs_length=$(tar xf "$tar_file" "$board_dir"/root -O | wc -c 2> /dev/null)


In openwrt/target/linux/octeon/base-files/lib/upgrade/platform.sh line 125:
		[ "$kernel_length" = 0 -o "$rootfs_length" = 0 ] && {
                                       ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.

For more information:
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] && [ q ] as [ p -a q...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
  https://www.shellcheck.net/wiki/SC2162 -- read without -r will mangle backs...
