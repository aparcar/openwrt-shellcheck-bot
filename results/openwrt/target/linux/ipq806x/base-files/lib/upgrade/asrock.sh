
In openwrt/target/linux/ipq806x/base-files/lib/upgrade/asrock.sh line 10:
	dd if=/dev/mtd$mtdnum of=/tmp/mtd$mtdnum bs=1k
                      ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                         ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	dd if=/dev/mtd"$mtdnum" of=/tmp/mtd"$mtdnum" bs=1k


In openwrt/target/linux/ipq806x/base-files/lib/upgrade/asrock.sh line 12:
	local partition_byte="$(dd if=/tmp/mtd$mtdnum bs=1 skip=52 count=1)"
                                              ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local partition_byte="$(dd if=/tmp/mtd"$mtdnum" bs=1 skip=52 count=1)"


In openwrt/target/linux/ipq806x/base-files/lib/upgrade/asrock.sh line 13:
	local upgrade_byte="$(dd if=/tmp/mtd$mtdnum bs=1 skip=4 count=1)"
                                            ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local upgrade_byte="$(dd if=/tmp/mtd"$mtdnum" bs=1 skip=4 count=1)"


In openwrt/target/linux/ipq806x/base-files/lib/upgrade/asrock.sh line 15:
	if [ $1 = "bootcheck" ]; then
             ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	if [ "$1" = "bootcheck" ]; then


In openwrt/target/linux/ipq806x/base-files/lib/upgrade/asrock.sh line 16:
		if [ ! -s $upgrade_byte ]; then
                          ^-----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		if [ ! -s "$upgrade_byte" ]; then


In openwrt/target/linux/ipq806x/base-files/lib/upgrade/asrock.sh line 17:
			dd if=/dev/mtd$mtdnum of=/tmp/mtd$mtdnum bs=1k
                                      ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                                         ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			dd if=/dev/mtd"$mtdnum" of=/tmp/mtd"$mtdnum" bs=1k


In openwrt/target/linux/ipq806x/base-files/lib/upgrade/asrock.sh line 18:
			printf '\x00' | dd of=/tmp/mtd$mtdnum conv=notrunc bs=1 seek=4
                                                      ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			printf '\x00' | dd of=/tmp/mtd"$mtdnum" conv=notrunc bs=1 seek=4


In openwrt/target/linux/ipq806x/base-files/lib/upgrade/asrock.sh line 19:
			printf '\x00' | dd of=/tmp/mtd$mtdnum conv=notrunc bs=1 seek=56
                                                      ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			printf '\x00' | dd of=/tmp/mtd"$mtdnum" conv=notrunc bs=1 seek=56


In openwrt/target/linux/ipq806x/base-files/lib/upgrade/asrock.sh line 23:
	elif [ $1 = "sysupgrade" ]; then
               ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	elif [ "$1" = "sysupgrade" ]; then


In openwrt/target/linux/ipq806x/base-files/lib/upgrade/asrock.sh line 24:
		printf '\x01' | dd of=/tmp/mtd$mtdnum conv=notrunc bs=1 seek=4
                                              ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		printf '\x01' | dd of=/tmp/mtd"$mtdnum" conv=notrunc bs=1 seek=4


In openwrt/target/linux/ipq806x/base-files/lib/upgrade/asrock.sh line 25:
		printf '\x01' | dd of=/tmp/mtd$mtdnum conv=notrunc bs=1 seek=56
                                              ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		printf '\x01' | dd of=/tmp/mtd"$mtdnum" conv=notrunc bs=1 seek=56


In openwrt/target/linux/ipq806x/base-files/lib/upgrade/asrock.sh line 28:
	if [ -s $partition_byte ]; then
                ^-------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	if [ -s "$partition_byte" ]; then


In openwrt/target/linux/ipq806x/base-files/lib/upgrade/asrock.sh line 29:
		printf '\x01' | dd of=/tmp/mtd$mtdnum conv=notrunc bs=1 seek=52
                                              ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		printf '\x01' | dd of=/tmp/mtd"$mtdnum" conv=notrunc bs=1 seek=52


In openwrt/target/linux/ipq806x/base-files/lib/upgrade/asrock.sh line 31:
		printf '\x00' | dd of=/tmp/mtd$mtdnum conv=notrunc bs=1 seek=52
                                              ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		printf '\x00' | dd of=/tmp/mtd"$mtdnum" conv=notrunc bs=1 seek=52


In openwrt/target/linux/ipq806x/base-files/lib/upgrade/asrock.sh line 34:
	mtd write /tmp/mtd$mtdnum /dev/mtd$mtdnum
                          ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                          ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	mtd write /tmp/mtd"$mtdnum" /dev/mtd"$mtdnum"


In openwrt/target/linux/ipq806x/base-files/lib/upgrade/asrock.sh line 45:
	if [ $? -ne 0 ]; then
             ^-- SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.


In openwrt/target/linux/ipq806x/base-files/lib/upgrade/asrock.sh line 52:
	ubirmvol /dev/$ubidev -N ubi_rootfs &> /dev/null || true
                      ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	ubirmvol /dev/"$ubidev" -N ubi_rootfs &> /dev/null || true


In openwrt/target/linux/ipq806x/base-files/lib/upgrade/asrock.sh line 53:
	ubirmvol /dev/$ubidev -N ubi_rootfs_data &> /dev/null || true
                      ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	ubirmvol /dev/"$ubidev" -N ubi_rootfs_data &> /dev/null || true

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
  https://www.shellcheck.net/wiki/SC2181 -- Check exit code directly with e.g...
