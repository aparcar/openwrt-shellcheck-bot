
In openwrt/target/linux/mvebu/cortexa72/base-files/lib/upgrade/emmc-puzzle.sh line 5:
	export_bootdevice && export_partdevice diskdev 0 || {
                          ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.


In openwrt/target/linux/mvebu/cortexa72/base-files/lib/upgrade/emmc-puzzle.sh line 18:
	while read part start size; do
              ^--^ SC2162: read without -r will mangle backslashes.


In openwrt/target/linux/mvebu/cortexa72/base-files/lib/upgrade/emmc-puzzle.sh line 19:
		if export_partdevice partdev $part; then
                                             ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		if export_partdevice partdev "$part"; then


In openwrt/target/linux/mvebu/cortexa72/base-files/lib/upgrade/emmc-puzzle.sh line 35:
	dd if=/dev/zero of=$(find_mmc_part rootfs_data) bs=512 count=8
                           ^--------------------------^ SC2046: Quote this to prevent word splitting.

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
  https://www.shellcheck.net/wiki/SC2015 -- Note that A && B || C is not if-t...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
