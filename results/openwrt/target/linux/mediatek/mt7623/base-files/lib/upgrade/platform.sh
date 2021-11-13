
In openwrt/target/linux/mediatek/mt7623/base-files/lib/upgrade/platform.sh line 15:
	export_bootdevice && export_partdevice diskdev 0 || {
                          ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.


In openwrt/target/linux/mediatek/mt7623/base-files/lib/upgrade/platform.sh line 52:
		while read part start size; do
                      ^--^ SC2162: read without -r will mangle backslashes.


In openwrt/target/linux/mediatek/mt7623/base-files/lib/upgrade/platform.sh line 53:
			part="$(($part - 2))"
                                 ^---^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/mediatek/mt7623/base-files/lib/upgrade/platform.sh line 71:
		if [ "$diskdev" = "mmcblk0" -a -r /tmp/recovery/eMMCboot.bin ]; then
                                            ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/target/linux/mediatek/mt7623/base-files/lib/upgrade/platform.sh line 92:
		export UPGRADE_MMC_IMAGE_BLOCKS=$(($(get_image "$1" | fwtool -i /dev/null -T - | dd of=$UPGRADE_MMC_PARTDEV bs=512 2>&1 | grep "records out" | cut -d' ' -f1)))
                                                                                                       ^------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		export UPGRADE_MMC_IMAGE_BLOCKS=$(($(get_image "$1" | fwtool -i /dev/null -T - | dd of="$UPGRADE_MMC_PARTDEV" bs=512 2>&1 | grep "records out" | cut -d' ' -f1)))


In openwrt/target/linux/mediatek/mt7623/base-files/lib/upgrade/platform.sh line 94:
		dd if=/dev/zero of=$UPGRADE_MMC_PARTDEV bs=512 seek=$UPGRADE_MMC_IMAGE_BLOCKS count=8
                                   ^------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		dd if=/dev/zero of="$UPGRADE_MMC_PARTDEV" bs=512 seek=$UPGRADE_MMC_IMAGE_BLOCKS count=8

For more information:
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] && [ q ] as [ p -a q...
  https://www.shellcheck.net/wiki/SC2015 -- Note that A && B || C is not if-t...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
