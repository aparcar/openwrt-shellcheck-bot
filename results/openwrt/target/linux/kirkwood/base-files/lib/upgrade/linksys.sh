
In openwrt/target/linux/kirkwood/base-files/lib/upgrade/linksys.sh line 12:
		case $(egrep ^mtd${mtd_ubi0}: /proc/mtd | cut -d '"' -f 2) in
                       ^---^ SC2196: egrep is non-standard and deprecated. Use grep -E instead.
                                 ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		case $(egrep ^mtd"${mtd_ubi0}": /proc/mtd | cut -d '"' -f 2) in


In openwrt/target/linux/kirkwood/base-files/lib/upgrade/linksys.sh line 54:
	if [ ! -n "$part_label" ]
             ^-- SC2236: Use -z instead of ! -n.


In openwrt/target/linux/kirkwood/base-files/lib/upgrade/linksys.sh line 60:
	local target_mtd=$(find_mtd_part $part_label)
                                         ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local target_mtd=$(find_mtd_part "$part_label")


In openwrt/target/linux/kirkwood/base-files/lib/upgrade/linksys.sh line 74:
		get_image "$1" | mtd write - $part_label
                                             ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		get_image "$1" | mtd write - "$part_label"

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
  https://www.shellcheck.net/wiki/SC2196 -- egrep is non-standard and depreca...
  https://www.shellcheck.net/wiki/SC2236 -- Use -z instead of ! -n.
