
In openwrt/target/linux/ramips/mt7621/base-files/lib/upgrade/iodata.sh line 5:
. /lib/functions.sh
  ^---------------^ SC1091: Not following: /lib/functions.sh was not specified as input (see shellcheck -x).


In openwrt/target/linux/ramips/mt7621/base-files/lib/upgrade/iodata.sh line 23:
	if [ -z "$persist_mtd" -o -z "$factory_mtd" ]; then
                               ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/target/linux/ramips/mt7621/base-files/lib/upgrade/iodata.sh line 28:
	local bootnum=$(hexdump -s 4 -n 1 -e '"%x"' ${persist_mtd})
                                                    ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local bootnum=$(hexdump -s 4 -n 1 -e '"%x"' "${persist_mtd}")


In openwrt/target/linux/ramips/mt7621/base-files/lib/upgrade/iodata.sh line 29:
	local debugflag=$(hexdump -s 65141 -n 1 -e '"%x"' ${factory_mtd})
                                                          ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local debugflag=$(hexdump -s 65141 -n 1 -e '"%x"' "${factory_mtd}")


In openwrt/target/linux/ramips/mt7621/base-files/lib/upgrade/iodata.sh line 31:
	if [ "$bootnum" != "1" -a "$bootnum" != "2" ]; then
                               ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/target/linux/ramips/mt7621/base-files/lib/upgrade/iodata.sh line 35:
	if [ "$debugflag" != "0" -a "$debugflag" != "1" ]; then
                                 ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/target/linux/ramips/mt7621/base-files/lib/upgrade/iodata.sh line 42:
		if ! (echo -ne "\x01" | dd bs=1 count=1 seek=4 conv=notrunc of=${persist_mtd} 2>/dev/null); then
                                                                               ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		if ! (echo -ne "\x01" | dd bs=1 count=1 seek=4 conv=notrunc of="${persist_mtd}" 2>/dev/null); then


In openwrt/target/linux/ramips/mt7621/base-files/lib/upgrade/iodata.sh line 49:
		if ! (echo -ne "\x01" | dd bs=1 count=1 seek=65141 conv=notrunc of=${factory_mtd} 2>/dev/null); then
                                                                                   ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		if ! (echo -ne "\x01" | dd bs=1 count=1 seek=65141 conv=notrunc of="${factory_mtd}" 2>/dev/null); then

For more information:
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] && [ q ] as [ p -a q...
  https://www.shellcheck.net/wiki/SC1091 -- Not following: /lib/functions.sh ...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
