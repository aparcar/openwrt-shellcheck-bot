
In openwrt/package/base-files/files/lib/functions/caldata.sh line 17:
	mtd=$(find_mtd_chardev $part)
                               ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	mtd=$(find_mtd_chardev "$part")


In openwrt/package/base-files/files/lib/functions/caldata.sh line 20:
	dd if=$mtd of=/lib/firmware/$FIRMWARE iflag=skip_bytes bs=$count skip=$offset count=1 2>/dev/null || \
              ^--^ SC2086: Double quote to prevent globbing and word splitting.
                                    ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	dd if="$mtd" of=/lib/firmware/"$FIRMWARE" iflag=skip_bytes bs=$count skip=$offset count=1 2>/dev/null || \


In openwrt/package/base-files/files/lib/functions/caldata.sh line 33:
	ubidev=$(nand_find_ubi $CI_UBIPART)
                               ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	ubidev=$(nand_find_ubi "$CI_UBIPART")


In openwrt/package/base-files/files/lib/functions/caldata.sh line 34:
	ubi=$(nand_find_volume $ubidev $part)
                               ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                       ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	ubi=$(nand_find_volume "$ubidev" "$part")


In openwrt/package/base-files/files/lib/functions/caldata.sh line 37:
	dd if=/dev/$ubi of=/lib/firmware/$FIRMWARE iflag=skip_bytes bs=$count skip=$offset count=1 2>/dev/null || \
                   ^--^ SC2086: Double quote to prevent globbing and word splitting.
                                         ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	dd if=/dev/"$ubi" of=/lib/firmware/"$FIRMWARE" iflag=skip_bytes bs=$count skip=$offset count=1 2>/dev/null || \


In openwrt/package/base-files/files/lib/functions/caldata.sh line 50:
	reversed=$(hexdump -v -s $offset -n $count -e '/1 "%02x "' $mtd)
                                 ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                                                   ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	reversed=$(hexdump -v -s "$offset" -n $count -e '/1 "%02x "' "$mtd")


In openwrt/package/base-files/files/lib/functions/caldata.sh line 56:
	printf "%b" "$caldata" > /lib/firmware/$FIRMWARE
                                               ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	printf "%b" "$caldata" > /lib/firmware/"$FIRMWARE"


In openwrt/package/base-files/files/lib/functions/caldata.sh line 68:
	cat $source | dd of=$target iflag=skip_bytes bs=$count skip=$offset count=1 2>/dev/null || \
            ^-----^ SC2086: Double quote to prevent globbing and word splitting.
            ^-----^ SC2002: Useless cat. Consider 'cmd < file | ..' or 'cmd file | ..' instead.
                            ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	cat "$source" | dd of="$target" iflag=skip_bytes bs=$count skip=$offset count=1 2>/dev/null || \


In openwrt/package/base-files/files/lib/functions/caldata.sh line 79:
	cat $source | dd of=/dev/null iflag=skip_bytes bs=$count skip=$offset count=1 2>/dev/null || \
            ^-----^ SC2086: Double quote to prevent globbing and word splitting.
            ^-----^ SC2002: Useless cat. Consider 'cmd < file | ..' or 'cmd file | ..' instead.

Did you mean: 
	cat "$source" | dd of=/dev/null iflag=skip_bytes bs=$count skip=$offset count=1 2>/dev/null || \


In openwrt/package/base-files/files/lib/functions/caldata.sh line 83:
	echo 1 > /sys/$DEVPATH/loading
                      ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo 1 > /sys/"$DEVPATH"/loading


In openwrt/package/base-files/files/lib/functions/caldata.sh line 84:
	cat $source | dd of=/sys/$DEVPATH/data iflag=skip_bytes bs=$count skip=$offset count=1 2>/dev/null
            ^-----^ SC2086: Double quote to prevent globbing and word splitting.
            ^-----^ SC2002: Useless cat. Consider 'cmd < file | ..' or 'cmd file | ..' instead.
                                 ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	cat "$source" | dd of=/sys/"$DEVPATH"/data iflag=skip_bytes bs=$count skip=$offset count=1 2>/dev/null


In openwrt/package/base-files/files/lib/functions/caldata.sh line 85:
	echo 0 > /sys/$DEVPATH/loading
                      ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo 0 > /sys/"$DEVPATH"/loading


In openwrt/package/base-files/files/lib/functions/caldata.sh line 94:
	magic=$(hexdump -v -n 2 -e '1/1 "%02x"' $target)
                                                ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	magic=$(hexdump -v -n 2 -e '1/1 "%02x"' "$target")


In openwrt/package/base-files/files/lib/functions/caldata.sh line 111:
	xor_fw_mac=$(hexdump -v -n 6 -s $mac_offset -e '/1 "%02x"' /lib/firmware/$FIRMWARE)
                                                                                 ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	xor_fw_mac=$(hexdump -v -n 6 -s $mac_offset -e '/1 "%02x"' /lib/firmware/"$FIRMWARE")


In openwrt/package/base-files/files/lib/functions/caldata.sh line 114:
	xor_fw_chksum=$(hexdump -v -n 2 -s $chksum_offset -e '/1 "%02x"' /lib/firmware/$FIRMWARE)
                                                                                       ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	xor_fw_chksum=$(hexdump -v -n 2 -s $chksum_offset -e '/1 "%02x"' /lib/firmware/"$FIRMWARE")


In openwrt/package/base-files/files/lib/functions/caldata.sh line 115:
	xor_fw_chksum=$(xor $xor_fw_chksum $xor_fw_mac $xor_mac)
                            ^------------^ SC2086: Double quote to prevent globbing and word splitting.
                                           ^---------^ SC2086: Double quote to prevent globbing and word splitting.
                                                       ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	xor_fw_chksum=$(xor "$xor_fw_chksum" "$xor_fw_mac" "$xor_mac")


In openwrt/package/base-files/files/lib/functions/caldata.sh line 118:
		dd of=$target conv=notrunc bs=1 seek=$chksum_offset count=2
                      ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		dd of="$target" conv=notrunc bs=1 seek=$chksum_offset count=2


In openwrt/package/base-files/files/lib/functions/caldata.sh line 127:
	[ -z "$mac" -o -z "$mac_offset" ] && return
                    ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/base-files/files/lib/functions/caldata.sh line 133:
	macaddr_2bin $mac | dd of=$target conv=notrunc oflag=seek_bytes bs=6 seek=$mac_offset count=1 || \
                     ^--^ SC2086: Double quote to prevent globbing and word splitting.
                                  ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	macaddr_2bin "$mac" | dd of="$target" conv=notrunc oflag=seek_bytes bs=6 seek=$mac_offset count=1 || \

For more information:
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] || [ q ] as [ p -o q...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
  https://www.shellcheck.net/wiki/SC2002 -- Useless cat. Consider 'cmd < file...
