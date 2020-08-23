
In openwrt/target/linux/ramips/mt7621/base-files/lib/upgrade/ubnt.sh line 13:
	local current_kernel_index=$(hexdump -s $UBNT_ERX_KERNEL_INDEX_OFFSET -n 1 -e '/1 "%X "' ${factory_mtd})
                                                                                                 ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local current_kernel_index=$(hexdump -s $UBNT_ERX_KERNEL_INDEX_OFFSET -n 1 -e '/1 "%X "' "${factory_mtd}")


In openwrt/target/linux/ramips/mt7621/base-files/lib/upgrade/ubnt.sh line 15:
	if [ $current_kernel_index == "0" ]; then
             ^-------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	if [ "$current_kernel_index" == "0" ]; then


In openwrt/target/linux/ramips/mt7621/base-files/lib/upgrade/ubnt.sh line 17:
	elif [ $current_kernel_index == "1" ]; then
               ^-------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	elif [ "$current_kernel_index" == "1" ]; then


In openwrt/target/linux/ramips/mt7621/base-files/lib/upgrade/ubnt.sh line 27:
	if [ $kernel_part == "kernel1" ]; then
             ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	if [ "$kernel_part" == "kernel1" ]; then


In openwrt/target/linux/ramips/mt7621/base-files/lib/upgrade/ubnt.sh line 29:
	elif [ $kernel_part == "kernel2" ]; then
               ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	elif [ "$kernel_part" == "kernel2" ]; then


In openwrt/target/linux/ramips/mt7621/base-files/lib/upgrade/ubnt.sh line 36:
	if ! (echo -e $new_kernel_index | dd of=${factory_mtd} bs=1 count=1 seek=$UBNT_ERX_KERNEL_INDEX_OFFSET); then
                                                ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	if ! (echo -e $new_kernel_index | dd of="${factory_mtd}" bs=1 count=1 seek=$UBNT_ERX_KERNEL_INDEX_OFFSET); then


In openwrt/target/linux/ramips/mt7621/base-files/lib/upgrade/ubnt.sh line 49:
	local kernel_part="$(ubnt_get_target_kernel ${factory_mtd})"
                                                    ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local kernel_part="$(ubnt_get_target_kernel "${factory_mtd}")"


In openwrt/target/linux/ramips/mt7621/base-files/lib/upgrade/ubnt.sh line 71:
		local troot_ubivol="$( nand_find_volume $ubidev troot )"
                                                        ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		local troot_ubivol="$( nand_find_volume "$ubidev" troot )"


In openwrt/target/linux/ramips/mt7621/base-files/lib/upgrade/ubnt.sh line 72:
		[ -n "$troot_ubivol" ] && ubirmvol /dev/$ubidev -N troot || true
                                       ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.
                                                        ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		[ -n "$troot_ubivol" ] && ubirmvol /dev/"$ubidev" -N troot || true


In openwrt/target/linux/ramips/mt7621/base-files/lib/upgrade/ubnt.sh line 75:
	ubnt_update_target_kernel ${factory_mtd} ${kernel_part} || exit 1
                                  ^------------^ SC2086: Double quote to prevent globbing and word splitting.
                                                 ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	ubnt_update_target_kernel "${factory_mtd}" "${kernel_part}" || exit 1

For more information:
  https://www.shellcheck.net/wiki/SC2015 -- Note that A && B || C is not if-t...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
