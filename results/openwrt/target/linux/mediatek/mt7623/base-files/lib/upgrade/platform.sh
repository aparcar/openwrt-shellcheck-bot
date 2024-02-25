
In openwrt/target/linux/mediatek/mt7623/base-files/lib/upgrade/platform.sh line 8:
		if [ "$rootdisk" = "$(cat $handle)" ]; then
                                          ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		if [ "$rootdisk" = "$(cat "$handle")" ]; then


In openwrt/target/linux/mediatek/mt7623/base-files/lib/upgrade/platform.sh line 28:
	export_bootdevice && export_partdevice diskdev 0 || {
                          ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.


In openwrt/target/linux/mediatek/mt7623/base-files/lib/upgrade/platform.sh line 65:
		while read part start size; do
                      ^--^ SC2162: read without -r will mangle backslashes.


In openwrt/target/linux/mediatek/mt7623/base-files/lib/upgrade/platform.sh line 66:
			part="$(($part - 2))"
                                 ^---^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/mediatek/mt7623/base-files/lib/upgrade/platform.sh line 84:
		if [ "$diskdev" = "mmcblk0" -a -r /tmp/recovery/eMMCboot.bin ]; then
                                            ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.

For more information:
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] && [ q ] as [ p -a q...
  https://www.shellcheck.net/wiki/SC2015 -- Note that A && B || C is not if-t...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
