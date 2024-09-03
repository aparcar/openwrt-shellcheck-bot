
In openwrt/target/linux/octeon/base-files/lib/upgrade/platform.sh line 13:
	if read cmdline < /proc/cmdline; then
           ^--^ SC2162: read without -r will mangle backslashes.


In openwrt/target/linux/octeon/base-files/lib/upgrade/platform.sh line 33:
	while read line; do
              ^--^ SC2162: read without -r will mangle backslashes.


In openwrt/target/linux/octeon/base-files/lib/upgrade/platform.sh line 34:
		export -n "${line}"
                          ^-------^ SC2163: This does not export 'line'. Remove $/${} for that, or use ${var?} to quiet.


In openwrt/target/linux/octeon/base-files/lib/upgrade/platform.sh line 35:
	done < $(find /sys/bus/platform/devices/16f0000000000.ehci/ -path \*block/sd[a-z]/uevent)
               ^-- SC2046: Quote this to prevent word splitting.
                                                                          ^--------------------^ SC2061: Quote the parameter to -path so the shell won't interpret it.


In openwrt/target/linux/octeon/base-files/lib/upgrade/platform.sh line 80:
	if [ $board = "itus,shield-router" ]; then
             ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	if [ "$board" = "itus,shield-router" ]; then


In openwrt/target/linux/octeon/base-files/lib/upgrade/platform.sh line 85:
		tar -Oxf $tar_file "$board_dir/kernel" > /boot/$kernel
                         ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                                                               ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		tar -Oxf "$tar_file" "$board_dir/kernel" > /boot/"$kernel"


In openwrt/target/linux/octeon/base-files/lib/upgrade/platform.sh line 92:
				fw_setenv bootcmd 'usb start; ext2load usb 0:1 $loadaddr vmlinux.64; bootoctlinux $loadaddr coremask=f endbootargs rootfstype=squashfs rootwait root=PARTUUID='"${rootpartuuid}"
                                                  ^-- SC2016: Expressions don't expand in single quotes, use double quotes for that.


In openwrt/target/linux/octeon/base-files/lib/upgrade/platform.sh line 101:
		[ -f /boot/vmlinux.64 -a ! -L /boot/vmlinux.64 ] && {
                                      ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/target/linux/octeon/base-files/lib/upgrade/platform.sh line 107:
		tar xf $tar_file $board_dir/kernel -O > /boot/vmlinux.64
                       ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                                 ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		tar xf "$tar_file" "$board_dir"/kernel -O > /boot/vmlinux.64


In openwrt/target/linux/octeon/base-files/lib/upgrade/platform.sh line 112:
	tar xf $tar_file $board_dir/root -O | dd of="${rootfs}" bs=4096
               ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                         ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	tar xf "$tar_file" "$board_dir"/root -O | dd of="${rootfs}" bs=4096


In openwrt/target/linux/octeon/base-files/lib/upgrade/platform.sh line 149:
	platform_do_flash $tar_file $board $kernel $rootfs
                          ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                                    ^----^ SC2086: Double quote to prevent globbing and word splitting.
                                           ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                                   ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	platform_do_flash "$tar_file" "$board" "$kernel" "$rootfs"


In openwrt/target/linux/octeon/base-files/lib/upgrade/platform.sh line 170:
		local kernel_length=$(tar xf $tar_file $board_dir/kernel -O | wc -c 2> /dev/null)
                                             ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                                                       ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		local kernel_length=$(tar xf "$tar_file" "$board_dir"/kernel -O | wc -c 2> /dev/null)


In openwrt/target/linux/octeon/base-files/lib/upgrade/platform.sh line 171:
		local rootfs_length=$(tar xf $tar_file $board_dir/root -O | wc -c 2> /dev/null)
                                             ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                                                       ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		local rootfs_length=$(tar xf "$tar_file" "$board_dir"/root -O | wc -c 2> /dev/null)


In openwrt/target/linux/octeon/base-files/lib/upgrade/platform.sh line 172:
		[ "$kernel_length" = 0 -o "$rootfs_length" = 0 ] && {
                                       ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
  https://www.shellcheck.net/wiki/SC2061 -- Quote the parameter to -path so t...
  https://www.shellcheck.net/wiki/SC2163 -- This does not export 'line'. Remo...
