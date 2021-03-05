
In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 12:
		[ "=" = "${tmp:0:1}" ] && echo ${tmp:1}
                                               ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		[ "=" = "${tmp:0:1}" ] && echo "${tmp:1}"


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 19:
	rootvol=$(basename $rootvol)
                           ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	rootvol=$(basename "$rootvol")


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 20:
	[ -e /sys/class/block/$rootvol ] || {
                              ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ -e /sys/class/block/"$rootvol" ] || {


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 22:
		[ -e /sys/class/block/$rootvol ] && echo $rootvol
                                      ^------^ SC2086: Double quote to prevent globbing and word splitting.
                                                         ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		[ -e /sys/class/block/"$rootvol" ] && echo "$rootvol"


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 24:
		[ -e /sys/class/block/$rootvol ] && echo $rootvol
                                      ^------^ SC2086: Double quote to prevent globbing and word splitting.
                                                         ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		[ -e /sys/class/block/"$rootvol" ] && echo "$rootvol"


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 27:
	[ -e /sys/class/block/$rootvol/partition ] || {
                              ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ -e /sys/class/block/"$rootvol"/partition ] || {


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 28:
		echo $rootvol
                     ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		echo "$rootvol"


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 31:
	rootdev=$(busybox readlink -f /sys/class/block/$rootvol)
                                                       ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	rootdev=$(busybox readlink -f /sys/class/block/"$rootvol")


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 32:
	rootdev=$(basename ${rootdev%%/${rootvol}})
                           ^---------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	rootdev=$(basename "${rootdev%%/${rootvol}}")


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 33:
	[ -e /sys/class/block/$rootdev ] && echo $rootdev
                              ^------^ SC2086: Double quote to prevent globbing and word splitting.
                                                 ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ -e /sys/class/block/"$rootdev" ] && echo "$rootdev"


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 37:
	for partname in /sys/class/block/$1/*/name; do
                                         ^-- SC2231: Quote expansions in this for loop glob to prevent wordsplitting, e.g. "$dir"/*.txt .


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 38:
		[ "$(cat ${partname})" = "$2" ] && {
                         ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		[ "$(cat "${partname}")" = "$2" ] && {


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 39:
			basename ${partname%%/name}
                                 ^----------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			basename "${partname%%/name}"


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 47:
	local file_type=$(identify $1)
                                   ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local file_type=$(identify "$1")


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 52:
		local fitpart=$(get_partition $rootdev production)
                                              ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		local fitpart=$(get_partition "$rootdev" production)


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 54:
		dd if=/dev/zero of=/dev/$fitpart bs=4096 count=1 2>/dev/null
                                        ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		dd if=/dev/zero of=/dev/"$fitpart" bs=4096 count=1 2>/dev/null


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 55:
		blockdev --rereadpt /dev/$rootdev
                                         ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		blockdev --rereadpt /dev/"$rootdev"


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 56:
		get_image "$1" | dd of=/dev/$fitpart
                                            ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		get_image "$1" | dd of=/dev/"$fitpart"


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 57:
		echo $rootdev > /tmp/sysupgrade.rootdev
                     ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		echo "$rootdev" > /tmp/sysupgrade.rootdev


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 102:
	blockdev --rereadpt /dev/$rootdev
                                 ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	blockdev --rereadpt /dev/"$rootdev"


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 103:
	local datadev=$(get_partition $rootdev rootfs_data)
                                      ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local datadev=$(get_partition "$rootdev" rootfs_data)


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 105:
	dd if="$UPGRADE_BACKUP" of=/dev/$datadev
                                        ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	dd if="$UPGRADE_BACKUP" of=/dev/"$datadev"

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
  https://www.shellcheck.net/wiki/SC2231 -- Quote expansions in this for loop...
