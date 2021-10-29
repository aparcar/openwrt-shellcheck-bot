
In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 7:
	local file_type=$(identify $1)
                                   ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local file_type=$(identify "$1")


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 15:
			blockdev --rereadpt /dev/$rootdev || return 1
                                                 ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			blockdev --rereadpt /dev/"$rootdev" || return 1


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 16:
			local fitpart=$(get_partition_by_name $rootdev "production")
                                                              ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			local fitpart=$(get_partition_by_name "$rootdev" "production")


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 18:
			dd if=/dev/zero of=/dev/$fitpart bs=4096 count=1 2>/dev/null
                                                ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			dd if=/dev/zero of=/dev/"$fitpart" bs=4096 count=1 2>/dev/null


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 19:
			blockdev --rereadpt /dev/$rootdev
                                                 ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			blockdev --rereadpt /dev/"$rootdev"


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 20:
			get_image "$1" | dd of=/dev/$fitpart
                                                    ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			get_image "$1" | dd of=/dev/"$fitpart"


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 21:
			blockdev --rereadpt /dev/$rootdev
                                                 ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			blockdev --rereadpt /dev/"$rootdev"


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 22:
			local datapart=$(get_partition_by_name $rootdev "rootfs_data")
                                                               ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			local datapart=$(get_partition_by_name "$rootdev" "rootfs_data")


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 24:
			dd if=/dev/zero of=/dev/$datapart bs=4096 count=1 2>/dev/null
                                                ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			dd if=/dev/zero of=/dev/"$datapart" bs=4096 count=1 2>/dev/null


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 25:
			echo $datapart > /tmp/sysupgrade.datapart
                             ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			echo "$datapart" > /tmp/sysupgrade.datapart


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 38:
		if [ "$magic" = "44485032" -o "$magic" = "44485033" ]; then
                                           ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 98:
	dd if="$UPGRADE_BACKUP" of=/dev/$datapart
                                        ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	dd if="$UPGRADE_BACKUP" of=/dev/"$datapart"


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 107:
		if echo $rootdev | grep -q mmc; then
                        ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		if echo "$rootdev" | grep -q mmc; then

For more information:
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] || [ q ] as [ p -o q...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
