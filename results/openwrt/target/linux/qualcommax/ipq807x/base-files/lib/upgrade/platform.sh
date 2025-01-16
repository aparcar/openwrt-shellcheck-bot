
In openwrt/target/linux/qualcommax/ipq807x/base-files/lib/upgrade/platform.sh line 24:
	ubiformat /dev/mtd$rootfs_mtdnum -y
                          ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	ubiformat /dev/mtd"$rootfs_mtdnum" -y


In openwrt/target/linux/qualcommax/ipq807x/base-files/lib/upgrade/platform.sh line 27:
	ubiformat /dev/mtd$kern_mtdnum -y
                          ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	ubiformat /dev/mtd"$kern_mtdnum" -y


In openwrt/target/linux/qualcommax/ipq807x/base-files/lib/upgrade/platform.sh line 242:
		part_num="$(hexdump -e '1/1 "%01x|"' -n 1 -s 168 -C /dev/mtd$mtdnum | cut -f 1 -d "|" | head -n1)"
                                                                            ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		part_num="$(hexdump -e '1/1 "%01x|"' -n 1 -s 168 -C /dev/mtd"$mtdnum" | cut -f 1 -d "|" | head -n1)"


In openwrt/target/linux/qualcommax/ipq807x/base-files/lib/upgrade/platform.sh line 246:
			mtd erase /dev/mtd$mtdnum
                                          ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			mtd erase /dev/mtd"$mtdnum"


In openwrt/target/linux/qualcommax/ipq807x/base-files/lib/upgrade/platform.sh line 247:
			mtd erase /dev/mtd$alt_mtdnum
                                          ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			mtd erase /dev/mtd"$alt_mtdnum"


In openwrt/target/linux/qualcommax/ipq807x/base-files/lib/upgrade/platform.sh line 259:
		part_num="$(hexdump -e '1/1 "%01x|"' -n 1 -s 168 -C /dev/mtd$config_mtdnum | cut -f 1 -d "|" | head -n1)"
                                                                            ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		part_num="$(hexdump -e '1/1 "%01x|"' -n 1 -s 168 -C /dev/mtd"$config_mtdnum" | cut -f 1 -d "|" | head -n1)"

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
