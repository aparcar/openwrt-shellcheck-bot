
In openwrt/package/base-files/files/lib/upgrade/nand.sh line 19:
	local dev="/dev/$(basename $dir)"
                                   ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local dev="/dev/$(basename "$dir")"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 23:
	local devid="$(cat $dir/dev)"
                           ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local devid="$(cat "$dir"/dev)"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 26:
	mknod "$dev" c $major $minor
                       ^----^ SC2086: Double quote to prevent globbing and word splitting.
                              ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	mknod "$dev" c "$major" "$minor"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 33:
	for ubivoldir in $ubidevdir/${1}_*; do
                         ^--------^ SC2231: Quote expansions in this for loop glob to prevent wordsplitting, e.g. "$dir"/*.txt .
                                    ^--^ SC2231: Quote expansions in this for loop glob to prevent wordsplitting, e.g. "$dir"/*.txt .


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 35:
		if [ "$( cat $ubivoldir/name )" = "$2" ]; then
                             ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		if [ "$( cat "$ubivoldir"/name )" = "$2" ]; then


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 36:
			basename $ubivoldir
                                 ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			basename "$ubivoldir"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 45:
	mtdnum="$( find_mtd_index $1 )"
                                  ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	mtdnum="$( find_mtd_index "$1" )"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 49:
		cmtdnum="$( cat $ubidevdir/mtd_num )"
                                ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		cmtdnum="$( cat "$ubidevdir"/mtd_num )"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 51:
			ubidev=$( basename $ubidevdir )
                                           ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			ubidev=$( basename "$ubidevdir" )


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 53:
			echo $ubidev
                             ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			echo "$ubidev"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 68:
	identify_magic_long $(nand_get_magic_long "$@")
                            ^-------------------------^ SC2046: Quote this to prevent word splitting.


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 72:
	identify_magic_long $(get_magic_long_tar "$@")
                            ^------------------------^ SC2046: Quote this to prevent word splitting.


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 81:
	local ubivol="$( nand_find_volume $ubidev rootfs_data )"
                                          ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local ubivol="$( nand_find_volume "$ubidev" rootfs_data )"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 83:
		ubivol="$( nand_find_volume $ubidev "$CI_ROOTPART" )"
                                            ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		ubivol="$( nand_find_volume "$ubidev" "$CI_ROOTPART" )"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 90:
	if ! mount -t ubifs /dev/$ubivol /tmp/new_root; then
                                 ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	if ! mount -t ubifs /dev/"$ubivol" /tmp/new_root; then


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 114:
		umount "/dev/$ubiblk" 2>/dev/null && echo "unmounted /dev/$ubiblk" || :
                                                  ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 138:
			>&2 ubiformat /dev/mtd$mtdnum -y
                                              ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			>&2 ubiformat /dev/mtd"$mtdnum" -y


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 148:
				>&2 ubimkvol /dev/$ubidev -n 0 -N ubootenv -s 1MiB
                                                  ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
				>&2 ubimkvol /dev/"$ubidev" -n 0 -N ubootenv -s 1MiB


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 149:
				>&2 ubimkvol /dev/$ubidev -n 1 -N ubootenv2 -s 1MiB
                                                  ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
				>&2 ubimkvol /dev/"$ubidev" -n 1 -N ubootenv2 -s 1MiB


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 172:
			umount "/dev/$ubivol" && echo "unmounted /dev/$ubivol" || :
                                              ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 192:
	[ -n "$rootfs_length" -o -n "$kernel_length" ] || return 1
                              ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 194:
	if [ -n "$CI_KERN_UBIPART" -a -n "$CI_ROOT_UBIPART" ]; then
                                   ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 205:
	local kern_ubivol="$( nand_find_volume $kern_ubidev "$CI_KERNPART" )"
                                               ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local kern_ubivol="$( nand_find_volume "$kern_ubidev" "$CI_KERNPART" )"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 206:
	local root_ubivol="$( nand_find_volume $root_ubidev "$CI_ROOTPART" )"
                                               ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local root_ubivol="$( nand_find_volume "$root_ubidev" "$CI_ROOTPART" )"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 207:
	local data_ubivol="$( nand_find_volume $root_ubidev rootfs_data )"
                                               ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local data_ubivol="$( nand_find_volume "$root_ubidev" rootfs_data )"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 211:
	[ "$kern_ubivol" ] && { nand_remove_ubiblock $kern_ubivol || return 1; }
                                                     ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ "$kern_ubivol" ] && { nand_remove_ubiblock "$kern_ubivol" || return 1; }


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 213:
	[ "$data_ubivol" ] && { nand_remove_ubiblock $data_ubivol || return 1; }
                                                     ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ "$data_ubivol" ] && { nand_remove_ubiblock "$data_ubivol" || return 1; }


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 216:
	[ "$kern_ubivol" ] && ubirmvol /dev/$kern_ubidev -N "$CI_KERNPART" || :
                           ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.
                                            ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ "$kern_ubivol" ] && ubirmvol /dev/"$kern_ubidev" -N "$CI_KERNPART" || :


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 217:
	[ "$root_ubivol" ] && ubirmvol /dev/$root_ubidev -N "$CI_ROOTPART" || :
                           ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.
                                            ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ "$root_ubivol" ] && ubirmvol /dev/"$root_ubidev" -N "$CI_ROOTPART" || :


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 218:
	[ "$data_ubivol" ] && ubirmvol /dev/$root_ubidev -N rootfs_data || :
                           ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.
                                            ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ "$data_ubivol" ] && ubirmvol /dev/"$root_ubidev" -N rootfs_data || :


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 222:
		if ! ubimkvol /dev/$kern_ubidev -N "$CI_KERNPART" -s $kernel_length; then
                                   ^----------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                     ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		if ! ubimkvol /dev/"$kern_ubidev" -N "$CI_KERNPART" -s "$kernel_length"; then


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 236:
		if ! ubimkvol /dev/$root_ubidev -N "$CI_ROOTPART" $rootfs_size_param; then
                                   ^----------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                  ^----------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		if ! ubimkvol /dev/"$root_ubidev" -N "$CI_ROOTPART" "$rootfs_size_param"; then


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 248:
		if ! ubimkvol /dev/$root_ubidev -N rootfs_data $rootfs_data_size_param; then
                                   ^----------^ SC2086: Double quote to prevent globbing and word splitting.
                                                               ^---------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		if ! ubimkvol /dev/"$root_ubidev" -N rootfs_data "$rootfs_data_size_param"; then


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 249:
			if ! ubimkvol /dev/$root_ubidev -N rootfs_data -m; then
                                           ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			if ! ubimkvol /dev/"$root_ubidev" -N rootfs_data -m; then


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 282:
	local root_ubivol="$(nand_find_volume $ubidev "$CI_ROOTPART")"
                                              ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local root_ubivol="$(nand_find_volume "$ubidev" "$CI_ROOTPART")"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 283:
	$cmd < "$ubifs_file" | ubiupdatevol /dev/$root_ubivol -s "$ubifs_length" -
                                                 ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	$cmd < "$ubifs_file" | ubiupdatevol /dev/"$root_ubivol" -s "$ubifs_length" -


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 296:
	local fit_ubivol="$(nand_find_volume $fit_ubidev "$CI_KERNPART")"
                                             ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local fit_ubivol="$(nand_find_volume "$fit_ubidev" "$CI_KERNPART")"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 297:
	$cmd < "$fit_file" | ubiupdatevol /dev/$fit_ubivol -s "$fit_length" -
                                               ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	$cmd < "$fit_file" | ubiupdatevol /dev/"$fit_ubivol" -s "$fit_length" -


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 339:
		local root_ubivol="$( nand_find_volume $ubidev "$CI_ROOTPART" )"
                                                       ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		local root_ubivol="$( nand_find_volume "$ubidev" "$CI_ROOTPART" )"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 341:
			ubiupdatevol /dev/$root_ubivol -s "$rootfs_length" -
                                          ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			ubiupdatevol /dev/"$root_ubivol" -s "$rootfs_length" -


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 355:
			local kern_ubivol="$( nand_find_volume $ubidev "$CI_KERNPART" )"
                                                               ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			local kern_ubivol="$( nand_find_volume "$ubidev" "$CI_KERNPART" )"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 357:
				ubiupdatevol /dev/$kern_ubivol -s "$kernel_length" -
                                                  ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
				ubiupdatevol /dev/"$kern_ubivol" -s "$kernel_length" -


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 485:
		if [ "$file_type" != "fit" -a "$file_type" != "ubi" -a "$file_type" != "ubifs" ]; then
                                           ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.
                                                                    ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] && [ q ] as [ p -a q...
  https://www.shellcheck.net/wiki/SC2015 -- Note that A && B || C is not if-t...
