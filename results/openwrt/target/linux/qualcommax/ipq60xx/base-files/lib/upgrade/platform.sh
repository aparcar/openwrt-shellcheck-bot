
In openwrt/target/linux/qualcommax/ipq60xx/base-files/lib/upgrade/platform.sh line 88:
	[ -z "$active" ] && active=$(hexdump -s 0x94 -n 4 -e '4 "%d"' /dev/mtd$(find_mtd_index 0:bootconfig))
                                                                              ^----------------------------^ SC2046: Quote this to prevent word splitting.

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
