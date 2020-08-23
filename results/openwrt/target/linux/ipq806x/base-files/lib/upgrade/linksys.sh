
In openwrt/target/linux/ipq806x/base-files/lib/upgrade/linksys.sh line 12:
		case $(egrep ^mtd${mtd_ubi0}: /proc/mtd | cut -d '"' -f 2) in
                       ^---^ SC2196: egrep is non-standard and deprecated. Use grep -E instead.
                                 ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		case $(egrep ^mtd"${mtd_ubi0}": /proc/mtd | cut -d '"' -f 2) in


In openwrt/target/linux/ipq806x/base-files/lib/upgrade/linksys.sh line 58:
	if [ ! -n "$part_label" ]
             ^-- SC2236: Use -z instead of ! -n.


In openwrt/target/linux/ipq806x/base-files/lib/upgrade/linksys.sh line 64:
	local target_mtd=$(find_mtd_part $part_label)
                                         ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local target_mtd=$(find_mtd_part "$part_label")


In openwrt/target/linux/ipq806x/base-files/lib/upgrade/linksys.sh line 93:
			local squash_ubivol="$( nand_find_volume $ubidev squashfs )"
                                                                 ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			local squash_ubivol="$( nand_find_volume "$ubidev" squashfs )"


In openwrt/target/linux/ipq806x/base-files/lib/upgrade/linksys.sh line 96:
			[ "$squash_ubivol" ] && ubirmvol /dev/$ubidev -N squashfs || true
                                             ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.
                                                              ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			[ "$squash_ubivol" ] && ubirmvol /dev/"$ubidev" -N squashfs || true


In openwrt/target/linux/ipq806x/base-files/lib/upgrade/linksys.sh line 105:
		local oldroot="$(linksys_get_root_magic $target_mtd)"
                                                        ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		local oldroot="$(linksys_get_root_magic "$target_mtd")"


In openwrt/target/linux/ipq806x/base-files/lib/upgrade/linksys.sh line 108:
		if [ "$newroot" = "55424923" -a "$oldroot" = "55424923" ]
                                             ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/target/linux/ipq806x/base-files/lib/upgrade/linksys.sh line 112:
			mtd erase $part_label
                                  ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			mtd erase "$part_label"


In openwrt/target/linux/ipq806x/base-files/lib/upgrade/linksys.sh line 113:
			get_image "$1" | mtd -n write - $part_label
                                                        ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			get_image "$1" | mtd -n write - "$part_label"


In openwrt/target/linux/ipq806x/base-files/lib/upgrade/linksys.sh line 115:
			get_image "$1" | mtd write - $part_label
                                                     ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			get_image "$1" | mtd write - "$part_label"

For more information:
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] && [ q ] as [ p -a q...
  https://www.shellcheck.net/wiki/SC2015 -- Note that A && B || C is not if-t...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
