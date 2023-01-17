
In openwrt/target/linux/ipq807x/base-files/lib/upgrade/platform.sh line 24:
	ubiformat /dev/mtd$rootfs_mtdnum -y
                          ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	ubiformat /dev/mtd"$rootfs_mtdnum" -y


In openwrt/target/linux/ipq807x/base-files/lib/upgrade/platform.sh line 27:
	ubiformat /dev/mtd$kern_mtdnum -y
                          ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	ubiformat /dev/mtd"$kern_mtdnum" -y

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
