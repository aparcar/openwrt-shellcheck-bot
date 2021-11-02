
In openwrt/package/base-files/files/lib/functions/caldata.sh line 12:
	dd if=$source of=$target iflag=skip_bytes,fullblock bs=$count skip=$offset count=1 2>/dev/null
              ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                         ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	dd if="$source" of="$target" iflag=skip_bytes,fullblock bs=$count skip=$offset count=1 2>/dev/null


In openwrt/package/base-files/files/lib/functions/caldata.sh line 27:
	mtd=$(find_mtd_chardev $part)
                               ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	mtd=$(find_mtd_chardev "$part")


In openwrt/package/base-files/files/lib/functions/caldata.sh line 30:
	caldata_dd $mtd /lib/firmware/$FIRMWARE $count $offset || \
                   ^--^ SC2086: Double quote to prevent globbing and word splitting.
                                      ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	caldata_dd "$mtd" /lib/firmware/"$FIRMWARE" $count $offset || \


In openwrt/package/base-files/files/lib/functions/caldata.sh line 43:
	ubidev=$(nand_find_ubi $CI_UBIPART)
                               ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	ubidev=$(nand_find_ubi "$CI_UBIPART")


In openwrt/package/base-files/files/lib/functions/caldata.sh line 44:
	ubi=$(nand_find_volume $ubidev $part)
                               ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                       ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	ubi=$(nand_find_volume "$ubidev" "$part")


In openwrt/package/base-files/files/lib/functions/caldata.sh line 47:
	caldata_dd /dev/$ubi /lib/firmware/$FIRMWARE $count $offset || \
                        ^--^ SC2086: Double quote to prevent globbing and word splitting.
                                           ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	caldata_dd /dev/"$ubi" /lib/firmware/"$FIRMWARE" $count $offset || \


In openwrt/package/base-files/files/lib/functions/caldata.sh line 57:
	mmc_part=$(find_mmc_part $part)
                                 ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	mmc_part=$(find_mmc_part "$part")


In openwrt/package/base-files/files/lib/functions/caldata.sh line 60:
	caldata_dd $mmc_part /lib/firmware/$FIRMWARE $count $offset || \
                   ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                                           ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	caldata_dd "$mmc_part" /lib/firmware/"$FIRMWARE" $count $offset || \


In openwrt/package/base-files/files/lib/functions/caldata.sh line 73:
	reversed=$(hexdump -v -s $offset -n $count -e '/1 "%02x "' $mtd)
                                 ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                                                   ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	reversed=$(hexdump -v -s "$offset" -n $count -e '/1 "%02x "' "$mtd")


In openwrt/package/base-files/files/lib/functions/caldata.sh line 79:
	printf "%b" "$caldata" > /lib/firmware/$FIRMWARE
                                               ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	printf "%b" "$caldata" > /lib/firmware/"$FIRMWARE"


In openwrt/package/base-files/files/lib/functions/caldata.sh line 90:
	caldata_dd $source $target $count $offset || \
                   ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                           ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	caldata_dd "$source" "$target" $count $offset || \


In openwrt/package/base-files/files/lib/functions/caldata.sh line 105:
	caldata_dd $source $target $count $offset
                   ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                           ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	caldata_dd "$source" "$target" $count $offset


In openwrt/package/base-files/files/lib/functions/caldata.sh line 106:
	if [ $? != 0 ]; then
             ^-- SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.


In openwrt/package/base-files/files/lib/functions/caldata.sh line 120:
	magic=$(hexdump -v -n 2 -e '1/1 "%02x"' $target)
                                                ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	magic=$(hexdump -v -n 2 -e '1/1 "%02x"' "$target")


In openwrt/package/base-files/files/lib/functions/caldata.sh line 137:
	xor_fw_mac=$(hexdump -v -n 6 -s $mac_offset -e '/1 "%02x"' /lib/firmware/$FIRMWARE)
                                                                                 ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	xor_fw_mac=$(hexdump -v -n 6 -s $mac_offset -e '/1 "%02x"' /lib/firmware/"$FIRMWARE")


In openwrt/package/base-files/files/lib/functions/caldata.sh line 140:
	xor_fw_chksum=$(hexdump -v -n 2 -s $chksum_offset -e '/1 "%02x"' /lib/firmware/$FIRMWARE)
                                                                                       ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	xor_fw_chksum=$(hexdump -v -n 2 -s $chksum_offset -e '/1 "%02x"' /lib/firmware/"$FIRMWARE")


In openwrt/package/base-files/files/lib/functions/caldata.sh line 141:
	xor_fw_chksum=$(xor $xor_fw_chksum $xor_fw_mac $xor_mac)
                            ^------------^ SC2086: Double quote to prevent globbing and word splitting.
                                           ^---------^ SC2086: Double quote to prevent globbing and word splitting.
                                                       ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	xor_fw_chksum=$(xor "$xor_fw_chksum" "$xor_fw_mac" "$xor_mac")


In openwrt/package/base-files/files/lib/functions/caldata.sh line 144:
		dd of=$target conv=notrunc bs=1 seek=$chksum_offset count=2
                      ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		dd of="$target" conv=notrunc bs=1 seek=$chksum_offset count=2


In openwrt/package/base-files/files/lib/functions/caldata.sh line 153:
	[ -z "$mac" -o -z "$mac_offset" ] && return
                    ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/base-files/files/lib/functions/caldata.sh line 159:
	macaddr_2bin $mac | dd of=$target conv=notrunc oflag=seek_bytes bs=6 seek=$mac_offset count=1 || \
                     ^--^ SC2086: Double quote to prevent globbing and word splitting.
                                  ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	macaddr_2bin "$mac" | dd of="$target" conv=notrunc oflag=seek_bytes bs=6 seek=$mac_offset count=1 || \

For more information:
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] || [ q ] as [ p -o q...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
  https://www.shellcheck.net/wiki/SC2181 -- Check exit code directly with e.g...
