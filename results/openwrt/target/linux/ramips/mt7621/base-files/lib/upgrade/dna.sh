
In openwrt/target/linux/ramips/mt7621/base-files/lib/upgrade/dna.sh line 20:
	tar -xaf $1
                 ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	tar -xaf "$1"


In openwrt/target/linux/ramips/mt7621/base-files/lib/upgrade/dna.sh line 24:
	[ -n "$_bootfs_size" -a "$_bootfs_size" -gt "0" ] || nand_do_upgrade_failed
                             ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/target/linux/ramips/mt7621/base-files/lib/upgrade/dna.sh line 31:
	ubimkvol /dev/ubi0 --type=static --size=${_bootfs_size} --name=rootfs_0
                                                ^-------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	ubimkvol /dev/ubi0 --type=static --size="${_bootfs_size}" --name=rootfs_0


In openwrt/target/linux/ramips/mt7621/base-files/lib/upgrade/dna.sh line 35:
	ubiupdatevol /dev/${_kern_ubivol} sysupgrade-dna_valokuitu-plus-ex400/kernel
                          ^-------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	ubiupdatevol /dev/"${_kern_ubivol}" sysupgrade-dna_valokuitu-plus-ex400/kernel

For more information:
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] && [ q ] as [ p -a q...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
