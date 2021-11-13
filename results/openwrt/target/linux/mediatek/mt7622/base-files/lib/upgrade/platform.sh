
In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 7:
	local file_type=$(identify $1)
                                   ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local file_type=$(identify "$1")


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 16:
			export UPGRADE_MMC_PARTDEV=$(find_mmc_part "production" $rootdev)
                                                                                ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			export UPGRADE_MMC_PARTDEV=$(find_mmc_part "production" "$rootdev")


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 18:
			export UPGRADE_MMC_IMAGE_BLOCKS=$(($(get_image "$1" | fwtool -i /dev/null -T - | dd of=$UPGRADE_MMC_PARTDEV bs=512 2>&1 | grep "records out" | cut -d' ' -f1)))
                                                                                                               ^------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			export UPGRADE_MMC_IMAGE_BLOCKS=$(($(get_image "$1" | fwtool -i /dev/null -T - | dd of="$UPGRADE_MMC_PARTDEV" bs=512 2>&1 | grep "records out" | cut -d' ' -f1)))


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 20:
			dd if=/dev/zero of=$UPGRADE_MMC_PARTDEV bs=512 seek=$UPGRADE_MMC_IMAGE_BLOCKS count=8
                                           ^------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			dd if=/dev/zero of="$UPGRADE_MMC_PARTDEV" bs=512 seek=$UPGRADE_MMC_IMAGE_BLOCKS count=8


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 33:
		if [ "$magic" = "44485032" -o "$magic" = "44485033" ]; then
                                           ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 104:
		if echo $rootdev | grep -q mmc; then
                        ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		if echo "$rootdev" | grep -q mmc; then

For more information:
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] || [ q ] as [ p -o q...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
