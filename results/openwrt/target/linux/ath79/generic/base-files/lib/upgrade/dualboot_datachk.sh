
In openwrt/target/linux/ath79/generic/base-files/lib/upgrade/dualboot_datachk.sh line 15:
	local inactive_mtd="$(find_mtd_index $PART_NAME)"
                                             ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local inactive_mtd="$(find_mtd_index "$PART_NAME")"


In openwrt/target/linux/ath79/generic/base-files/lib/upgrade/dualboot_datachk.sh line 16:
	local inactive_offset="$(cat /sys/class/mtd/mtd${inactive_mtd}/offset)"
                                                       ^-------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local inactive_offset="$(cat /sys/class/mtd/mtd"${inactive_mtd}"/offset)"


In openwrt/target/linux/ath79/generic/base-files/lib/upgrade/dualboot_datachk.sh line 17:
	local total_size="$(cat /sys/class/mtd/mtd${inactive_mtd}/size)"
                                                  ^-------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local total_size="$(cat /sys/class/mtd/mtd"${inactive_mtd}"/size)"


In openwrt/target/linux/ath79/generic/base-files/lib/upgrade/dualboot_datachk.sh line 59:
	local board_dir=$(tar tf $tar_file | grep -m 1 '^sysupgrade-.*/$')
                                 ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local board_dir=$(tar tf "$tar_file" | grep -m 1 '^sysupgrade-.*/$')


In openwrt/target/linux/ath79/generic/base-files/lib/upgrade/dualboot_datachk.sh line 62:
	local kernel_length=$(tar xf $tar_file ${board_dir}/kernel -O | wc -c)
                                     ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                                               ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local kernel_length=$(tar xf "$tar_file" "${board_dir}"/kernel -O | wc -c)


In openwrt/target/linux/ath79/generic/base-files/lib/upgrade/dualboot_datachk.sh line 63:
	local rootfs_length=$(tar xf $tar_file ${board_dir}/root -O | wc -c)
                                     ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                                               ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local rootfs_length=$(tar xf "$tar_file" "${board_dir}"/root -O | wc -c)


In openwrt/target/linux/ath79/generic/base-files/lib/upgrade/dualboot_datachk.sh line 67:
	local kernel_md5=$(tar xf $tar_file ${board_dir}/kernel -O | md5sum); kernel_md5="${kernel_md5%% *}"
                                  ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                                            ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local kernel_md5=$(tar xf "$tar_file" "${board_dir}"/kernel -O | md5sum); kernel_md5="${kernel_md5%% *}"


In openwrt/target/linux/ath79/generic/base-files/lib/upgrade/dualboot_datachk.sh line 69:
	local rootfs_md5=$(tar xf $tar_file ${board_dir}/root -O | dd bs=1 count=$rootfs_length | md5sum); rootfs_md5="${rootfs_md5%% *}"
                                  ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                                            ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local rootfs_md5=$(tar xf "$tar_file" "${board_dir}"/root -O | dd bs=1 count=$rootfs_length | md5sum); rootfs_md5="${rootfs_md5%% *}"


In openwrt/target/linux/ath79/generic/base-files/lib/upgrade/dualboot_datachk.sh line 79:
	tar xf $tar_file ${board_dir}/root -O | mtd -n -p $kernel_length $restore_backup write - $PART_NAME
               ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                         ^----------^ SC2086: Double quote to prevent globbing and word splitting.
                                                          ^------------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                         ^-------------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                                                 ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	tar xf "$tar_file" "${board_dir}"/root -O | mtd -n -p "$kernel_length" "$restore_backup" write - "$PART_NAME"


In openwrt/target/linux/ath79/generic/base-files/lib/upgrade/dualboot_datachk.sh line 80:
	tar xf $tar_file ${board_dir}/kernel -O | mtd -n write - $PART_NAME
               ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                         ^----------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                 ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	tar xf "$tar_file" "${board_dir}"/kernel -O | mtd -n write - "$PART_NAME"


In openwrt/target/linux/ath79/generic/base-files/lib/upgrade/dualboot_datachk.sh line 89:
	printf "kernel_size_%i %i\n" $next_boot_part $((kernel_length / 1024)) >> $setenv_script
        ^-- SC2129: Consider using { cmd1; cmd2; } >> file instead of individual redirects.


In openwrt/target/linux/ath79/generic/base-files/lib/upgrade/dualboot_datachk.sh line 91:
	printf "vmlinux_size 0x%08x\n" ${kernel_length} >> $setenv_script
                                       ^--------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	printf "vmlinux_size 0x%08x\n" "${kernel_length}" >> $setenv_script


In openwrt/target/linux/ath79/generic/base-files/lib/upgrade/dualboot_datachk.sh line 92:
	printf "vmlinux_checksum %s\n" ${kernel_md5} >> $setenv_script
                                       ^-----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	printf "vmlinux_checksum %s\n" "${kernel_md5}" >> $setenv_script


In openwrt/target/linux/ath79/generic/base-files/lib/upgrade/dualboot_datachk.sh line 97:
	printf "rootfs_checksum %s\n" ${rootfs_md5} >> $setenv_script
                                      ^-----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	printf "rootfs_checksum %s\n" "${rootfs_md5}" >> $setenv_script

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
  https://www.shellcheck.net/wiki/SC2129 -- Consider using { cmd1; cmd2; } >>...
