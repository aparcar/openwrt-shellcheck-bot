
In openwrt/target/linux/ath79/generic/base-files/lib/upgrade/platform.sh line 26:
		if ! grep -q "U-Boot [0-9]\{4\}\.[0-9]\{2\}" $uboot_mtd; then
                                                             ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		if ! grep -q "U-Boot [0-9]\{4\}\.[0-9]\{2\}" "$uboot_mtd"; then


In openwrt/target/linux/ath79/generic/base-files/lib/upgrade/platform.sh line 88:
		echo -n -e "\x9e\x10\x00\x00\x9e\x10\x00\x00" | dd of=$(find_mtd_part BootupA) bs=1 seek=$((0x254)) conv=notrunc
                                                                      ^----------------------^ SC2046: Quote this to prevent word splitting.


In openwrt/target/linux/ath79/generic/base-files/lib/upgrade/platform.sh line 89:
		echo -n -e "\x9e\x10\x00\x00\x9e\x10\x00\x00" | dd of=$(find_mtd_part BootupB) bs=1 seek=$((0x254)) conv=notrunc
                                                                      ^----------------------^ SC2046: Quote this to prevent word splitting.

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
