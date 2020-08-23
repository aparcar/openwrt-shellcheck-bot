
In openwrt/target/linux/ath79/mikrotik/base-files/lib/upgrade/platform.sh line 25:
	tar xf "$1" ${board_dir}/kernel -O | nandwrite -o "$fw_mtd" -
                    ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	tar xf "$1" "${board_dir}"/kernel -O | nandwrite -o "$fw_mtd" -

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
