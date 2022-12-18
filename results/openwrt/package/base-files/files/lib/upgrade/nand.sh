
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


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 52:
			ubidev=$( basename $ubidevdir )
                                           ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			ubidev=$( basename "$ubidevdir" )


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 54:
			echo $ubidev
                             ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			echo "$ubidev"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 61:
	(${3}cat "$1" | dd bs=4 "skip=${2:-0}" count=1 | hexdump -v -n 4 -e '1/1 "%02x"') 2> /dev/null
         ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	("${3}"cat "$1" | dd bs=4 "skip=${2:-0}" count=1 | hexdump -v -n 4 -e '1/1 "%02x"') 2> /dev/null


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 65:
	(tar xO${3}f "$1" "$2" | dd bs=4 count=1 | hexdump -v -n 4 -e '1/1 "%02x"') 2> /dev/null
               ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	(tar xO"${3}"f "$1" "$2" | dd bs=4 count=1 | hexdump -v -n 4 -e '1/1 "%02x"') 2> /dev/null


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 97:
	identify_magic $(nand_get_magic_long "$@")
                       ^-------------------------^ SC2046: Quote this to prevent word splitting.


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 101:
	identify_magic $(get_magic_long_tar "$@")
                       ^------------------------^ SC2046: Quote this to prevent word splitting.


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 110:
	local ubivol="$( nand_find_volume $ubidev rootfs_data )"
                                          ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local ubivol="$( nand_find_volume "$ubidev" rootfs_data )"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 112:
		ubivol="$( nand_find_volume $ubidev "$CI_ROOTPART" )"
                                            ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		ubivol="$( nand_find_volume "$ubidev" "$CI_ROOTPART" )"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 119:
	if ! mount -t ubifs /dev/$ubivol /tmp/new_root; then
                                 ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	if ! mount -t ubifs /dev/"$ubivol" /tmp/new_root; then


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 143:
		umount "/dev/$ubiblk" && echo "unmounted /dev/$ubiblk" || :
                                      ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 167:
			>&2 ubiformat /dev/mtd$mtdnum -y
                                              ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			>&2 ubiformat /dev/mtd"$mtdnum" -y


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 177:
				>&2 ubimkvol /dev/$ubidev -n 0 -N ubootenv -s 1MiB
                                                  ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
				>&2 ubimkvol /dev/"$ubidev" -n 0 -N ubootenv -s 1MiB


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 178:
				>&2 ubimkvol /dev/$ubidev -n 1 -N ubootenv2 -s 1MiB
                                                  ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
				>&2 ubimkvol /dev/"$ubidev" -n 1 -N ubootenv2 -s 1MiB


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 201:
			umount "/dev/$ubivol" && echo "unmounted /dev/$ubivol" || :
                                              ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 221:
	[ -n "$rootfs_length" -o -n "$kernel_length" ] || return 1
                              ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 223:
	if [ -n "$CI_KERN_UBIPART" -a -n "$CI_ROOT_UBIPART" ]; then
                                   ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 234:
	local kern_ubivol="$( nand_find_volume $kern_ubidev "$CI_KERNPART" )"
                                               ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local kern_ubivol="$( nand_find_volume "$kern_ubidev" "$CI_KERNPART" )"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 235:
	local root_ubivol="$( nand_find_volume $root_ubidev "$CI_ROOTPART" )"
                                               ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local root_ubivol="$( nand_find_volume "$root_ubidev" "$CI_ROOTPART" )"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 236:
	local data_ubivol="$( nand_find_volume $root_ubidev rootfs_data )"
                                               ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local data_ubivol="$( nand_find_volume "$root_ubidev" rootfs_data )"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 240:
	[ "$kern_ubivol" ] && { nand_remove_ubiblock $kern_ubivol || return 1; }
                                                     ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ "$kern_ubivol" ] && { nand_remove_ubiblock "$kern_ubivol" || return 1; }


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 242:
	[ "$data_ubivol" ] && { nand_remove_ubiblock $data_ubivol || return 1; }
                                                     ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ "$data_ubivol" ] && { nand_remove_ubiblock "$data_ubivol" || return 1; }


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 245:
	[ "$kern_ubivol" ] && ubirmvol /dev/$kern_ubidev -N "$CI_KERNPART" || :
                           ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.
                                            ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ "$kern_ubivol" ] && ubirmvol /dev/"$kern_ubidev" -N "$CI_KERNPART" || :


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 246:
	[ "$root_ubivol" ] && ubirmvol /dev/$root_ubidev -N "$CI_ROOTPART" || :
                           ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.
                                            ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ "$root_ubivol" ] && ubirmvol /dev/"$root_ubidev" -N "$CI_ROOTPART" || :


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 247:
	[ "$data_ubivol" ] && ubirmvol /dev/$root_ubidev -N rootfs_data || :
                           ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.
                                            ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ "$data_ubivol" ] && ubirmvol /dev/"$root_ubidev" -N rootfs_data || :


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 251:
		if ! ubimkvol /dev/$kern_ubidev -N "$CI_KERNPART" -s $kernel_length; then
                                   ^----------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                     ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		if ! ubimkvol /dev/"$kern_ubidev" -N "$CI_KERNPART" -s "$kernel_length"; then


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 265:
		if ! ubimkvol /dev/$root_ubidev -N "$CI_ROOTPART" $rootfs_size_param; then
                                   ^----------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                  ^----------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		if ! ubimkvol /dev/"$root_ubidev" -N "$CI_ROOTPART" "$rootfs_size_param"; then


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 277:
		if ! ubimkvol /dev/$root_ubidev -N rootfs_data $rootfs_data_size_param; then
                                   ^----------^ SC2086: Double quote to prevent globbing and word splitting.
                                                               ^---------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		if ! ubimkvol /dev/"$root_ubidev" -N rootfs_data "$rootfs_data_size_param"; then


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 278:
			if ! ubimkvol /dev/$root_ubidev -N rootfs_data -m; then
                                           ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			if ! ubimkvol /dev/"$root_ubidev" -N rootfs_data -m; then


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 296:
	${gz}cat "$ubi_file" | ubiformat "/dev/mtd$mtdnum" -y -f - && ubiattach -m "$mtdnum"
        ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	"${gz}"cat "$ubi_file" | ubiformat "/dev/mtd$mtdnum" -y -f - && ubiattach -m "$mtdnum"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 304:
	local ubifs_length=$( (${gz}cat "$ubifs_file" | wc -c) 2> /dev/null)
                               ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local ubifs_length=$( ("${gz}"cat "$ubifs_file" | wc -c) 2> /dev/null)


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 309:
	local root_ubivol="$(nand_find_volume $ubidev "$CI_ROOTPART")"
                                              ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local root_ubivol="$(nand_find_volume "$ubidev" "$CI_ROOTPART")"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 310:
	${gz}cat "$ubifs_file" | ubiupdatevol /dev/$root_ubivol -s "$ubifs_length" -
        ^---^ SC2086: Double quote to prevent globbing and word splitting.
                                                   ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	"${gz}"cat "$ubifs_file" | ubiupdatevol /dev/"$root_ubivol" -s "$ubifs_length" -


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 318:
	local fit_length=$( (${gz}cat "$fit_file" | wc -c) 2> /dev/null)
                             ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local fit_length=$( ("${gz}"cat "$fit_file" | wc -c) 2> /dev/null)


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 323:
	local fit_ubivol="$(nand_find_volume $fit_ubidev "$CI_KERNPART")"
                                             ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local fit_ubivol="$(nand_find_volume "$fit_ubidev" "$CI_KERNPART")"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 324:
	${gz}cat "$fit_file" | ubiupdatevol /dev/$fit_ubivol -s "$fit_length" -
        ^---^ SC2086: Double quote to prevent globbing and word splitting.
                                                 ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	"${gz}"cat "$fit_file" | ubiupdatevol /dev/"$fit_ubivol" -s "$fit_length" -


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 333:
	local board_dir="$(tar t${gz}f "$tar_file" | grep -m 1 '^sysupgrade-.*/$')"
                                ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local board_dir="$(tar t"${gz}"f "$tar_file" | grep -m 1 '^sysupgrade-.*/$')"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 339:
		kernel_length=$( (tar xO${gz}f "$tar_file" "$board_dir/kernel" | wc -c) 2> /dev/null)
                                        ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		kernel_length=$( (tar xO"${gz}"f "$tar_file" "$board_dir/kernel" | wc -c) 2> /dev/null)


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 342:
	local rootfs_length=$( (tar xO${gz}f "$tar_file" "$board_dir/root" | wc -c) 2> /dev/null)
                                      ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local rootfs_length=$( (tar xO"${gz}"f "$tar_file" "$board_dir/root" | wc -c) 2> /dev/null)


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 364:
		local root_ubivol="$( nand_find_volume $ubidev "$CI_ROOTPART" )"
                                                       ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		local root_ubivol="$( nand_find_volume "$ubidev" "$CI_ROOTPART" )"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 365:
		tar xO${gz}f "$tar_file" "$board_dir/root" | \
                      ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		tar xO"${gz}"f "$tar_file" "$board_dir/root" | \


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 366:
			ubiupdatevol /dev/$root_ubivol -s "$rootfs_length" -
                                          ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			ubiupdatevol /dev/"$root_ubivol" -s "$rootfs_length" -


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 370:
			tar xO${gz}f "$tar_file" "$board_dir/kernel" | \
                              ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			tar xO"${gz}"f "$tar_file" "$board_dir/kernel" | \


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 374:
			local kern_ubivol="$( nand_find_volume $ubidev "$CI_KERNPART" )"
                                                               ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			local kern_ubivol="$( nand_find_volume "$ubidev" "$CI_KERNPART" )"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 375:
			tar xO${gz}f "$tar_file" "$board_dir/kernel" | \
                              ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			tar xO"${gz}"f "$tar_file" "$board_dir/kernel" | \


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 376:
				ubiupdatevol /dev/$kern_ubivol -s "$kernel_length" -
                                                  ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
				ubiupdatevol /dev/"$kern_ubivol" -s "$kernel_length" -


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 401:
	if ! tar xO${gz}f "$file" > /dev/null; then
                   ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	if ! tar xO"${gz}"f "$file" > /dev/null; then


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 484:
	local control_length=$( (tar xO${gz}f "$file" "sysupgrade-$board_name/CONTROL" | wc -c) 2> /dev/null)
                                       ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local control_length=$( (tar xO"${gz}"f "$file" "sysupgrade-$board_name/CONTROL" | wc -c) 2> /dev/null)


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 490:
		if [ "$file_type" != "fit" -a "$file_type" != "ubi" -a "$file_type" != "ubifs" ]; then
                                           ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.
                                                                    ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] && [ q ] as [ p -a q...
  https://www.shellcheck.net/wiki/SC2015 -- Note that A && B || C is not if-t...
