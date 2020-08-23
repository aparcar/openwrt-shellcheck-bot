
In openwrt/target/linux/mvebu/cortexa9/base-files/lib/upgrade/linksys.sh line 12:
		case $(egrep ^mtd${mtd_ubi0}: /proc/mtd | cut -d '"' -f 2) in
                       ^---^ SC2196: egrep is non-standard and deprecated. Use grep -E instead.
                                 ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		case $(egrep ^mtd"${mtd_ubi0}": /proc/mtd | cut -d '"' -f 2) in


In openwrt/target/linux/mvebu/cortexa9/base-files/lib/upgrade/linksys.sh line 58:
	if [ ! -n "$part_label" ]
             ^-- SC2236: Use -z instead of ! -n.


In openwrt/target/linux/mvebu/cortexa9/base-files/lib/upgrade/linksys.sh line 64:
	local target_mtd=$(find_mtd_part $part_label)
                                         ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local target_mtd=$(find_mtd_part "$part_label")


In openwrt/target/linux/mvebu/cortexa9/base-files/lib/upgrade/linksys.sh line 77:
	[ "$magic_long" = "27051956" -o "$magic_long" = "0000a0e1" ] && {
                                     ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/target/linux/mvebu/cortexa9/base-files/lib/upgrade/linksys.sh line 79:
		local target_mtd=$(find_mtd_part $part_label)
                                                 ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		local target_mtd=$(find_mtd_part "$part_label")


In openwrt/target/linux/mvebu/cortexa9/base-files/lib/upgrade/linksys.sh line 80:
		local oldroot="$(linksys_get_root_magic $target_mtd)"
                                                        ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		local oldroot="$(linksys_get_root_magic "$target_mtd")"


In openwrt/target/linux/mvebu/cortexa9/base-files/lib/upgrade/linksys.sh line 83:
		if [ "$newroot" = "55424923" -a "$oldroot" = "55424923" ]
                                             ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/target/linux/mvebu/cortexa9/base-files/lib/upgrade/linksys.sh line 87:
			mtd erase $part_label
                                  ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			mtd erase "$part_label"


In openwrt/target/linux/mvebu/cortexa9/base-files/lib/upgrade/linksys.sh line 88:
			get_image "$1" | mtd -n write - $part_label
                                                        ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			get_image "$1" | mtd -n write - "$part_label"


In openwrt/target/linux/mvebu/cortexa9/base-files/lib/upgrade/linksys.sh line 90:
			get_image "$1" | mtd write - $part_label
                                                     ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			get_image "$1" | mtd write - "$part_label"

For more information:
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] && [ q ] as [ p -a q...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
  https://www.shellcheck.net/wiki/SC2196 -- egrep is non-standard and depreca...
