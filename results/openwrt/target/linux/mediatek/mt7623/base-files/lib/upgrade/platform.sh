
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


In openwrt/target/linux/mediatek/mt7623/base-files/lib/upgrade/platform.sh line 89:
		blockdev --rereadpt /dev/$rootdev || return 1
                                         ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		blockdev --rereadpt /dev/"$rootdev" || return 1


In openwrt/target/linux/mediatek/mt7623/base-files/lib/upgrade/platform.sh line 92:
		dd if=/dev/zero of=/dev/$fitpart bs=4096 count=1 2>/dev/null
                                        ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		dd if=/dev/zero of=/dev/"$fitpart" bs=4096 count=1 2>/dev/null


In openwrt/target/linux/mediatek/mt7623/base-files/lib/upgrade/platform.sh line 93:
		blockdev --rereadpt /dev/$rootdev
                                         ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		blockdev --rereadpt /dev/"$rootdev"


In openwrt/target/linux/mediatek/mt7623/base-files/lib/upgrade/platform.sh line 94:
		get_image "$1" | dd of=/dev/$fitpart
                                            ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		get_image "$1" | dd of=/dev/"$fitpart"


In openwrt/target/linux/mediatek/mt7623/base-files/lib/upgrade/platform.sh line 95:
		blockdev --rereadpt /dev/$rootdev
                                         ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		blockdev --rereadpt /dev/"$rootdev"


In openwrt/target/linux/mediatek/mt7623/base-files/lib/upgrade/platform.sh line 96:
		local datapart=$(get_partition_by_name $rootdev "rootfs_data")
                                                       ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		local datapart=$(get_partition_by_name "$rootdev" "rootfs_data")


In openwrt/target/linux/mediatek/mt7623/base-files/lib/upgrade/platform.sh line 98:
		dd if=/dev/zero of=/dev/$datapart bs=4096 count=1 2>/dev/null
                                        ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		dd if=/dev/zero of=/dev/"$datapart" bs=4096 count=1 2>/dev/null


In openwrt/target/linux/mediatek/mt7623/base-files/lib/upgrade/platform.sh line 99:
		echo $datapart > /tmp/sysupgrade.datapart
                     ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		echo "$datapart" > /tmp/sysupgrade.datapart


In openwrt/target/linux/mediatek/mt7623/base-files/lib/upgrade/platform.sh line 178:
	dd if="$UPGRADE_BACKUP" of=/dev/$datapart
                                        ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	dd if="$UPGRADE_BACKUP" of=/dev/"$datapart"

For more information:
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] && [ q ] as [ p -a q...
  https://www.shellcheck.net/wiki/SC2015 -- Note that A && B || C is not if-t...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
