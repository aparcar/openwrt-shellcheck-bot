
In openwrt/target/linux/ramips/mt7621/base-files/lib/upgrade/ubnt.sh line 13:
	local kernel_index=$(hexdump -s $UBNT_ERX_KERNEL_INDEX_OFFSET -n 1 -e '/1 "%X "' ${factory_mtd})
                                                                                         ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local kernel_index=$(hexdump -s $UBNT_ERX_KERNEL_INDEX_OFFSET -n 1 -e '/1 "%X "' "${factory_mtd}")


In openwrt/target/linux/ramips/mt7621/base-files/lib/upgrade/ubnt.sh line 15:
	if [ $kernel_index = "0" ]; then
             ^-----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	if [ "$kernel_index" = "0" ]; then


In openwrt/target/linux/ramips/mt7621/base-files/lib/upgrade/ubnt.sh line 20:
	if ! (echo -e "\x00" | dd of=${factory_mtd} bs=1 count=1 seek=$UBNT_ERX_KERNEL_INDEX_OFFSET); then
                                     ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	if ! (echo -e "\x00" | dd of="${factory_mtd}" bs=1 count=1 seek=$UBNT_ERX_KERNEL_INDEX_OFFSET); then


In openwrt/target/linux/ramips/mt7621/base-files/lib/upgrade/ubnt.sh line 46:
		local troot_ubivol="$( nand_find_volume $ubidev troot )"
                                                        ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		local troot_ubivol="$( nand_find_volume "$ubidev" troot )"


In openwrt/target/linux/ramips/mt7621/base-files/lib/upgrade/ubnt.sh line 47:
		[ -n "$troot_ubivol" ] && ubirmvol /dev/$ubidev -N troot || true
                                       ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.
                                                        ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		[ -n "$troot_ubivol" ] && ubirmvol /dev/"$ubidev" -N troot || true


In openwrt/target/linux/ramips/mt7621/base-files/lib/upgrade/ubnt.sh line 50:
	ubnt_update_kernel_flag ${factory_mtd} || exit 1
                                ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	ubnt_update_kernel_flag "${factory_mtd}" || exit 1

For more information:
  https://www.shellcheck.net/wiki/SC2015 -- Note that A && B || C is not if-t...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
