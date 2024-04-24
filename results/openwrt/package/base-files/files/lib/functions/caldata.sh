
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
	reversed=$(hexdump -v -s $offset -n $count -e '1/1 "%02x "' $mtd)
                                 ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                                                    ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	reversed=$(hexdump -v -s "$offset" -n $count -e '1/1 "%02x "' "$mtd")


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


In openwrt/package/base-files/files/lib/functions/caldata.sh line 134:
	[ -z "$data" -o -z "$data_offset" ] && return
                     ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/base-files/files/lib/functions/caldata.sh line 138:
	fw_data=$(hexdump -v -n $data_count -s $data_offset -e '1/1 "%02x"' $target)
                                                                            ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	fw_data=$(hexdump -v -n $data_count -s $data_offset -e '1/1 "%02x"' "$target")


In openwrt/package/base-files/files/lib/functions/caldata.sh line 143:
			fw_chksum=$(hexdump -v -n 2 -s $chksum_offset -e '1/1 "%02x"' $target)
                                                                                      ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			fw_chksum=$(hexdump -v -n 2 -s $chksum_offset -e '1/1 "%02x"' "$target")


In openwrt/package/base-files/files/lib/functions/caldata.sh line 144:
			fw_chksum=$(xor $fw_chksum $(data_2xor_val $fw_data) $(data_2xor_val $data))
                                        ^--------^ SC2086: Double quote to prevent globbing and word splitting.
                                                   ^-----------------------^ SC2046: Quote this to prevent word splitting.
                                                                   ^------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                             ^--------------------^ SC2046: Quote this to prevent word splitting.
                                                                                             ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			fw_chksum=$(xor "$fw_chksum" $(data_2xor_val "$fw_data") $(data_2xor_val "$data"))


In openwrt/package/base-files/files/lib/functions/caldata.sh line 146:
			data_2bin $fw_chksum | \
                                  ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			data_2bin "$fw_chksum" | \


In openwrt/package/base-files/files/lib/functions/caldata.sh line 147:
				dd of=$target conv=notrunc bs=1 seek=$chksum_offset count=2 || \
                                      ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
				dd of="$target" conv=notrunc bs=1 seek=$chksum_offset count=2 || \


In openwrt/package/base-files/files/lib/functions/caldata.sh line 151:
		data_2bin $data | \
                          ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		data_2bin "$data" | \


In openwrt/package/base-files/files/lib/functions/caldata.sh line 152:
			dd of=$target conv=notrunc bs=1 seek=$data_offset count=$data_count || \
                              ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			dd of="$target" conv=notrunc bs=1 seek=$data_offset count=$data_count || \


In openwrt/package/base-files/files/lib/functions/caldata.sh line 188:
	caldata_patch_data "${mac//:/}" $(printf "0x%x" $(($mac_id * 0x6 + 0xe))) 0xa "$target"
                                        ^-- SC2046: Quote this to prevent word splitting.
                                                           ^-----^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/base-files/files/lib/functions/caldata.sh line 202:
	regdomain=$(hexdump -v -n 2 -s 0x34 -e '1/1 "%02x"' $target)
                                                            ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	regdomain=$(hexdump -v -n 2 -s 0x34 -e '1/1 "%02x"' "$target")


In openwrt/package/base-files/files/lib/functions/caldata.sh line 206:
		regdomain_data=$(hexdump -v -n 2 -s $offset -e '1/1 "%02x"' $target)
                                                                            ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		regdomain_data=$(hexdump -v -n 2 -s $offset -e '1/1 "%02x"' "$target")

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] || [ q ] as [ p -o q...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
