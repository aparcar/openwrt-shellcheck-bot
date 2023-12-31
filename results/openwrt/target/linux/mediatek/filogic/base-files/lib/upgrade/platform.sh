
In openwrt/target/linux/mediatek/filogic/base-files/lib/upgrade/platform.sh line 32:
	ubiformat /dev/mtd$mtdnum -y
                          ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	ubiformat /dev/mtd"$mtdnum" -y


In openwrt/target/linux/mediatek/filogic/base-files/lib/upgrade/platform.sh line 35:
	ubiformat /dev/mtd$kern_mtdnum -y
                          ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	ubiformat /dev/mtd"$kern_mtdnum" -y

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
