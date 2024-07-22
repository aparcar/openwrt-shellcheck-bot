
In openwrt/target/linux/ath79/generic/base-files/lib/upgrade/platform.sh line 76:
		echo -n -e "\x9e\x10\x00\x00\x9e\x10\x00\x00" | dd of=$(find_mtd_part BootupA) bs=1 seek=$((0x254)) conv=notrunc
                                                                      ^----------------------^ SC2046: Quote this to prevent word splitting.


In openwrt/target/linux/ath79/generic/base-files/lib/upgrade/platform.sh line 77:
		echo -n -e "\x9e\x10\x00\x00\x9e\x10\x00\x00" | dd of=$(find_mtd_part BootupB) bs=1 seek=$((0x254)) conv=notrunc
                                                                      ^----------------------^ SC2046: Quote this to prevent word splitting.

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
