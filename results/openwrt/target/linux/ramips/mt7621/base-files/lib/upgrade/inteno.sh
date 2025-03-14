
In openwrt/target/linux/ramips/mt7621/base-files/lib/upgrade/inteno.sh line 29:
	[ -n "$_bootfs_size" -a "$_bootfs_size" -gt "0" ] || nand_do_upgrade_failed
                             ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/target/linux/ramips/mt7621/base-files/lib/upgrade/inteno.sh line 36:
	ubimkvol /dev/ubi0 --type=static --size=${_bootfs_size} --name=rootfs_0
                                                ^-------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	ubimkvol /dev/ubi0 --type=static --size="${_bootfs_size}" --name=rootfs_0

For more information:
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] && [ q ] as [ p -a q...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
