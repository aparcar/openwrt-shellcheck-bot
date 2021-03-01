
In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 11:
		[ "=" = "${tmp:0:1}" ] && echo ${tmp:1}
                                               ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		[ "=" = "${tmp:0:1}" ] && echo "${tmp:1}"


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 18:
	rootvol=$(basename $rootvol)
                           ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	rootvol=$(basename "$rootvol")


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 19:
	[ -e /sys/class/block/$rootvol/partition ] || {
                              ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ -e /sys/class/block/"$rootvol"/partition ] || {


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 20:
		echo $rootvol
                     ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		echo "$rootvol"


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 23:
	rootdev=$(busybox readlink -f /sys/class/block/$rootvol)
                                                       ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	rootdev=$(busybox readlink -f /sys/class/block/"$rootvol")


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 24:
	rootdev=$(basename ${rootdev%%/${rootvol}})
                           ^---------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	rootdev=$(basename "${rootdev%%/${rootvol}}")


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 25:
	[ -e /sys/class/block/$rootdev ] && echo $rootdev
                              ^------^ SC2086: Double quote to prevent globbing and word splitting.
                                                 ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ -e /sys/class/block/"$rootdev" ] && echo "$rootdev"


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 29:
	for partname in /sys/class/block/$1/*/name; do
                                         ^-- SC2231: Quote expansions in this for loop glob to prevent wordsplitting, e.g. "$dir"/*.txt .


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 30:
		[ "$(cat ${partname})" = "$2" ] && {
                         ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		[ "$(cat "${partname}")" = "$2" ] && {


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 31:
			basename ${partname%%/name}
                                 ^----------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			basename "${partname%%/name}"


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 39:
	local file_type=$(identify $1)
                                   ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local file_type=$(identify "$1")


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 44:
		local fitpart=$(get_partition $rootdev production)
                                              ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		local fitpart=$(get_partition "$rootdev" production)


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 46:
		dd if=/dev/zero of=/dev/$fitpart bs=4096 count=1 2>/dev/null
                                        ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		dd if=/dev/zero of=/dev/"$fitpart" bs=4096 count=1 2>/dev/null


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 47:
		blockdev --rereadpt /dev/$rootdev
                                         ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		blockdev --rereadpt /dev/"$rootdev"


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 48:
		get_image "$1" | dd of=/dev/$fitpart
                                            ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		get_image "$1" | dd of=/dev/"$fitpart"


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 49:
		echo $rootdev > /tmp/sysupgrade.rootdev
                     ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		echo "$rootdev" > /tmp/sysupgrade.rootdev


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 93:
	blockdev --rereadpt /dev/$rootdev
                                 ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	blockdev --rereadpt /dev/"$rootdev"


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 94:
	local datadev=$(get_partition $rootdev rootfs_data)
                                      ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local datadev=$(get_partition "$rootdev" rootfs_data)


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 96:
	dd if="$UPGRADE_BACKUP" of=/dev/$datadev
                                        ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	dd if="$UPGRADE_BACKUP" of=/dev/"$datadev"

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
  https://www.shellcheck.net/wiki/SC2231 -- Quote expansions in this for loop...
