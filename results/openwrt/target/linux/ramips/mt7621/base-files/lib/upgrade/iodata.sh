
In openwrt/target/linux/ramips/mt7621/base-files/lib/upgrade/iodata.sh line 37:
	local bootnum=$(hexdump -s 4 -n 1 -e '"%x"' ${persist_mtd})
                                                    ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local bootnum=$(hexdump -s 4 -n 1 -e '"%x"' "${persist_mtd}")


In openwrt/target/linux/ramips/mt7621/base-files/lib/upgrade/iodata.sh line 38:
	local debugflag=$(hexdump -s $((dflag_offset)) -n 1 -e '"%x"' ${factory_mtd})
                                                                      ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local debugflag=$(hexdump -s $((dflag_offset)) -n 1 -e '"%x"' "${factory_mtd}")


In openwrt/target/linux/ramips/mt7621/base-files/lib/upgrade/iodata.sh line 51:
		if ! (echo -ne "\x01" | dd bs=1 count=1 seek=4 conv=notrunc of=${persist_mtd} 2>/dev/null); then
                                                                               ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		if ! (echo -ne "\x01" | dd bs=1 count=1 seek=4 conv=notrunc of="${persist_mtd}" 2>/dev/null); then


In openwrt/target/linux/ramips/mt7621/base-files/lib/upgrade/iodata.sh line 58:
		if ! (echo -ne "\x01" | dd bs=1 count=1 seek=$((dflag_offset)) conv=notrunc of=${factory_mtd} 2>/dev/null); then
                                                                                               ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		if ! (echo -ne "\x01" | dd bs=1 count=1 seek=$((dflag_offset)) conv=notrunc of="${factory_mtd}" 2>/dev/null); then

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
