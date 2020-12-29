
In openwrt/target/linux/ath79/generic/base-files/lib/upgrade/openmesh.sh line 19:
		[ "$param" = "$our_param" ] && echo ${cfg_opt##*=} && break
                                                    ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		[ "$param" = "$our_param" ] && echo "${cfg_opt##*=}" && break


In openwrt/target/linux/ath79/generic/base-files/lib/upgrade/openmesh.sh line 30:
	local inactive_mtd="$(find_mtd_index $PART_NAME)"
                                             ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local inactive_mtd="$(find_mtd_index "$PART_NAME")"


In openwrt/target/linux/ath79/generic/base-files/lib/upgrade/openmesh.sh line 31:
	local inactive_offset="$(cat /sys/class/mtd/mtd${inactive_mtd}/offset)"
                                                       ^-------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local inactive_offset="$(cat /sys/class/mtd/mtd"${inactive_mtd}"/offset)"


In openwrt/target/linux/ath79/generic/base-files/lib/upgrade/openmesh.sh line 32:
	local total_size="$(cat /sys/class/mtd/mtd${inactive_mtd}/size)"
                                                  ^-------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local total_size="$(cat /sys/class/mtd/mtd"${inactive_mtd}"/size)"


In openwrt/target/linux/ath79/generic/base-files/lib/upgrade/openmesh.sh line 87:
		mtd -n -p $kernel_length $restore_backup write - $PART_NAME
                                         ^-------------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                 ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		mtd -n -p $kernel_length "$restore_backup" write - "$PART_NAME"


In openwrt/target/linux/ath79/generic/base-files/lib/upgrade/openmesh.sh line 89:
		mtd -n write - $PART_NAME
                               ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		mtd -n write - "$PART_NAME"


In openwrt/target/linux/ath79/generic/base-files/lib/upgrade/openmesh.sh line 98:
	printf "kernel_size_%i %i\n" $next_boot_part $kernel_kbs >> $setenv_script
        ^-- SC2129: Consider using { cmd1; cmd2; } >> file instead of individual redirects.


In openwrt/target/linux/ath79/generic/base-files/lib/upgrade/openmesh.sh line 101:
	printf "vmlinux_checksum %s\n" ${kernel_md5} >> $setenv_script
                                       ^-----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	printf "vmlinux_checksum %s\n" "${kernel_md5}" >> $setenv_script


In openwrt/target/linux/ath79/generic/base-files/lib/upgrade/openmesh.sh line 105:
	printf "rootfs_size %s\n" $rootfs_checksize >> $setenv_script
                                  ^---------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	printf "rootfs_size %s\n" "$rootfs_checksize" >> $setenv_script


In openwrt/target/linux/ath79/generic/base-files/lib/upgrade/openmesh.sh line 106:
	printf "rootfs_checksum %s\n" ${rootfs_md5} >> $setenv_script
                                      ^-----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	printf "rootfs_checksum %s\n" "${rootfs_md5}" >> $setenv_script

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
  https://www.shellcheck.net/wiki/SC2129 -- Consider using { cmd1; cmd2; } >>...
