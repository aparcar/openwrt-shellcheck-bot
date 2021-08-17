
In openwrt/package/base-files/files/lib/upgrade/legacy-sdcard.sh line 5:
	export_bootdevice && export_partdevice diskdev 0 || {
                          ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.


In openwrt/package/base-files/files/lib/upgrade/legacy-sdcard.sh line 33:
	export_bootdevice && export_partdevice diskdev 0 || {
                          ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.


In openwrt/package/base-files/files/lib/upgrade/legacy-sdcard.sh line 65:
		while read part start size; do
                      ^--^ SC2162: read without -r will mangle backslashes.


In openwrt/package/base-files/files/lib/upgrade/legacy-sdcard.sh line 66:
			if export_partdevice partdev $part; then
                                                     ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			if export_partdevice partdev "$part"; then


In openwrt/package/base-files/files/lib/upgrade/legacy-sdcard.sh line 86:
		[ -f /boot/kernel.img ] || mount -o rw,noatime /dev/$partdev /boot
                                                                    ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		[ -f /boot/kernel.img ] || mount -o rw,noatime /dev/"$partdev" /boot

For more information:
  https://www.shellcheck.net/wiki/SC2015 -- Note that A && B || C is not if-t...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
  https://www.shellcheck.net/wiki/SC2162 -- read without -r will mangle backs...
