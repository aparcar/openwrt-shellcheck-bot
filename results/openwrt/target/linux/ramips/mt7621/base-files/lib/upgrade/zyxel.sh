
In openwrt/target/linux/ramips/mt7621/base-files/lib/upgrade/zyxel.sh line 22:
	local bootnum=$(hexdump -s 4 -n 1 -e '"%x"' ${persist_mtd})
                                                    ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local bootnum=$(hexdump -s 4 -n 1 -e '"%x"' "${persist_mtd}")


In openwrt/target/linux/ramips/mt7621/base-files/lib/upgrade/zyxel.sh line 33:
		if ! ( echo -ne "\x01" | dd of=${persist_mtd} count=1 bs=1 seek=4 conv=notrunc 2>/dev/null ); then
                                               ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		if ! ( echo -ne "\x01" | dd of="${persist_mtd}" count=1 bs=1 seek=4 conv=notrunc 2>/dev/null ); then

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
