
In openwrt/target/linux/ipq806x/base-files/lib/upgrade/linksys.sh line 12:
		case $(grep -E ^mtd${mtd_ubi0}: /proc/mtd | cut -d '"' -f 2) in
                                   ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		case $(grep -E ^mtd"${mtd_ubi0}": /proc/mtd | cut -d '"' -f 2) in


In openwrt/target/linux/ipq806x/base-files/lib/upgrade/linksys.sh line 54:
	if [ ! -n "$part_label" ]
             ^-- SC2236: Use -z instead of ! -n.


In openwrt/target/linux/ipq806x/base-files/lib/upgrade/linksys.sh line 60:
	local target_mtd=$(find_mtd_part $part_label)
                                         ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local target_mtd=$(find_mtd_part "$part_label")


In openwrt/target/linux/ipq806x/base-files/lib/upgrade/linksys.sh line 89:
			local squash_ubivol="$( nand_find_volume $ubidev squashfs )"
                                                                 ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			local squash_ubivol="$( nand_find_volume "$ubidev" squashfs )"


In openwrt/target/linux/ipq806x/base-files/lib/upgrade/linksys.sh line 92:
			[ "$squash_ubivol" ] && ubirmvol /dev/$ubidev -N squashfs || true
                                             ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.
                                                              ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			[ "$squash_ubivol" ] && ubirmvol /dev/"$ubidev" -N squashfs || true


In openwrt/target/linux/ipq806x/base-files/lib/upgrade/linksys.sh line 105:
		get_image "$1" | mtd write - $part_label
                                             ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		get_image "$1" | mtd write - "$part_label"

For more information:
  https://www.shellcheck.net/wiki/SC2015 -- Note that A && B || C is not if-t...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
  https://www.shellcheck.net/wiki/SC2236 -- Use -z instead of ! -n.
