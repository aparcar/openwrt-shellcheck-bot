
In openwrt/target/linux/ramips/mt7621/base-files/lib/upgrade/platform.sh line 133:
		[ "$(hexdump -n 4 -e '"%x"' $kernel2_mtd)" = "56190527" ] &&\
                                            ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		[ "$(hexdump -n 4 -e '"%x"' "$kernel2_mtd")" = "56190527" ] &&\


In openwrt/target/linux/ramips/mt7621/base-files/lib/upgrade/platform.sh line 134:
		[ "$(hexdump -n 4 -s 104 -e '"%x"' $kernel2_mtd)" != "0" ] &&\
                                                   ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		[ "$(hexdump -n 4 -s 104 -e '"%x"' "$kernel2_mtd")" != "0" ] &&\


In openwrt/target/linux/ramips/mt7621/base-files/lib/upgrade/platform.sh line 135:
		dd bs=4 count=1 seek=26 conv=notrunc if=/dev/zero of=$kernel2_mtd 2>/dev/null &&\
                                                                     ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		dd bs=4 count=1 seek=26 conv=notrunc if=/dev/zero of="$kernel2_mtd" 2>/dev/null &&\

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
