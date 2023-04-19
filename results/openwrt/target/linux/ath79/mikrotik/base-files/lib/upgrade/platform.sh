
In openwrt/target/linux/ath79/mikrotik/base-files/lib/upgrade/platform.sh line 23:
	tar xf "$1" ${board_dir}/kernel -O | yafut -d "$fw_mtd" -w -i - -o kernel -m 0755 || return
                    ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	tar xf "$1" "${board_dir}"/kernel -O | yafut -d "$fw_mtd" -w -i - -o kernel -m 0755 || return

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
