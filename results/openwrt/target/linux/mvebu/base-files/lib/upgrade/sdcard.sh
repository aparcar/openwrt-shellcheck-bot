
In openwrt/target/linux/mvebu/base-files/lib/upgrade/sdcard.sh line 17:
	export_bootdevice && export_partdevice diskdev 0 || {
                          ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.


In openwrt/target/linux/mvebu/base-files/lib/upgrade/sdcard.sh line 45:
	export_bootdevice && export_partdevice diskdev 0 || {
                          ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.


In openwrt/target/linux/mvebu/base-files/lib/upgrade/sdcard.sh line 77:
		while read part start size; do
                      ^--^ SC2162: read without -r will mangle backslashes.


In openwrt/target/linux/mvebu/base-files/lib/upgrade/sdcard.sh line 78:
			if export_partdevice partdev $part; then
                                                     ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			if export_partdevice partdev "$part"; then


In openwrt/target/linux/mvebu/base-files/lib/upgrade/sdcard.sh line 94:
		fw_setenv openwrt_mmcload 'setenv bootargs "$openwrt_bootargs cfg80211.freg=$regdomain"; fatload mmc 0 0x01000000 zImage; fatload mmc 0 0x02000000 armada-385-turris-omnia.dtb'
                                          ^-- SC2016: Expressions don't expand in single quotes, use double quotes for that.


In openwrt/target/linux/mvebu/base-files/lib/upgrade/sdcard.sh line 95:
		fw_setenv factory_mmcload 'setenv bootargs "$bootargs cfg80211.freg=$regdomain"; btrload mmc 0 0x01000000 boot/zImage @; btrload mmc 0 0x02000000 boot/dtb @'
                                          ^-- SC2016: Expressions don't expand in single quotes, use double quotes for that.


In openwrt/target/linux/mvebu/base-files/lib/upgrade/sdcard.sh line 108:
		[ -f /boot/kernel.img ] || mount -o rw,noatime /dev/$partdev /boot
                                                                    ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		[ -f /boot/kernel.img ] || mount -o rw,noatime /dev/"$partdev" /boot

For more information:
  https://www.shellcheck.net/wiki/SC2015 -- Note that A && B || C is not if-t...
  https://www.shellcheck.net/wiki/SC2016 -- Expressions don't expand in singl...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
