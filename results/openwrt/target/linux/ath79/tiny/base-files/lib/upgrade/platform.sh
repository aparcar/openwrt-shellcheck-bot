
In openwrt/target/linux/ath79/tiny/base-files/lib/upgrade/platform.sh line 21:
		if ! grep -q "U-Boot [0-9]\{4\}\.[0-9]\{2\}" $uboot_mtd; then
                                                             ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		if ! grep -q "U-Boot [0-9]\{4\}\.[0-9]\{2\}" "$uboot_mtd"; then

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
