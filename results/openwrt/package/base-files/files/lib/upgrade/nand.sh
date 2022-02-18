
In openwrt/package/base-files/files/lib/upgrade/nand.sh line 17:
	local dev="/dev/$(basename $dir)"
                                   ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local dev="/dev/$(basename "$dir")"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 21:
	local devid="$(cat $dir/dev)"
                           ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local devid="$(cat "$dir"/dev)"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 24:
	mknod "$dev" c $major $minor
                       ^----^ SC2086: Double quote to prevent globbing and word splitting.
                              ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	mknod "$dev" c "$major" "$minor"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 31:
	for ubivoldir in $ubidevdir/${1}_*; do
                         ^--------^ SC2231: Quote expansions in this for loop glob to prevent wordsplitting, e.g. "$dir"/*.txt .
                                    ^--^ SC2231: Quote expansions in this for loop glob to prevent wordsplitting, e.g. "$dir"/*.txt .


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 33:
		if [ "$( cat $ubivoldir/name )" = "$2" ]; then
                             ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		if [ "$( cat "$ubivoldir"/name )" = "$2" ]; then


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 34:
			basename $ubivoldir
                                 ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			basename "$ubivoldir"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 43:
	mtdnum="$( find_mtd_index $1 )"
                                  ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	mtdnum="$( find_mtd_index "$1" )"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 47:
		cmtdnum="$( cat $ubidevdir/mtd_num )"
                                ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		cmtdnum="$( cat "$ubidevdir"/mtd_num )"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 50:
			ubidev=$( basename $ubidevdir )
                                           ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			ubidev=$( basename "$ubidevdir" )


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 52:
			echo $ubidev
                             ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			echo "$ubidev"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 59:
	dd if="$1" skip=$2 bs=4 count=1 2>/dev/null | hexdump -v -n 4 -e '1/1 "%02x"'
                        ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	dd if="$1" skip="$2" bs=4 count=1 2>/dev/null | hexdump -v -n 4 -e '1/1 "%02x"'


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 63:
	( tar xf $1 $2 -O | dd bs=4 count=1 | hexdump -v -n 4 -e '1/1 "%02x"') 2> /dev/null
                 ^-- SC2086: Double quote to prevent globbing and word splitting.
                    ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	( tar xf "$1" "$2" -O | dd bs=4 count=1 | hexdump -v -n 4 -e '1/1 "%02x"') 2> /dev/null


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 92:
	identify_magic $(nand_get_magic_long "$1" "${2:-0}")
                       ^-- SC2046: Quote this to prevent word splitting.


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 96:
	identify_magic $(get_magic_long_tar "$1" "$2")
                       ^-----------------------------^ SC2046: Quote this to prevent word splitting.


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 101:
	local ubidev=$( nand_find_ubi $CI_UBIPART )
                                      ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local ubidev=$( nand_find_ubi "$CI_UBIPART" )


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 102:
	local ubivol="$( nand_find_volume $ubidev rootfs_data )"
                                          ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local ubivol="$( nand_find_volume "$ubidev" rootfs_data )"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 104:
		ubivol="$( nand_find_volume $ubidev $CI_ROOTPART )"
                                            ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                                    ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		ubivol="$( nand_find_volume "$ubidev" "$CI_ROOTPART" )"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 106:
	if ! mount -t ubifs /dev/$ubivol /tmp/new_root; then
                                 ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	if ! mount -t ubifs /dev/"$ubivol" /tmp/new_root; then


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 126:
	[ -n "$rootfs_length" -o -n "$kernel_length" ] || return 1
                              ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 142:
		ubiformat /dev/mtd$mtdnum -y
                                  ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		ubiformat /dev/mtd"$mtdnum" -y


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 147:
			ubimkvol /dev/$ubidev -n 0 -N ubootenv -s 1MiB
                                      ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			ubimkvol /dev/"$ubidev" -n 0 -N ubootenv -s 1MiB


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 148:
			ubimkvol /dev/$ubidev -n 1 -N ubootenv2 -s 1MiB
                                      ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			ubimkvol /dev/"$ubidev" -n 1 -N ubootenv2 -s 1MiB


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 152:
	local kern_ubivol="$( nand_find_volume $ubidev $CI_KERNPART )"
                                               ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                                       ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local kern_ubivol="$( nand_find_volume "$ubidev" "$CI_KERNPART" )"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 153:
	local root_ubivol="$( nand_find_volume $ubidev $CI_ROOTPART )"
                                               ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                                       ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local root_ubivol="$( nand_find_volume "$ubidev" "$CI_ROOTPART" )"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 154:
	local data_ubivol="$( nand_find_volume $ubidev rootfs_data )"
                                               ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local data_ubivol="$( nand_find_volume "$ubidev" rootfs_data )"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 161:
		if ! ubiblock -r /dev/$ubiblkvol; then
                                      ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		if ! ubiblock -r /dev/"$ubiblkvol"; then


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 168:
	[ "$kern_ubivol" ] && ubirmvol /dev/$ubidev -N $CI_KERNPART || true
                           ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.
                                            ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                                       ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ "$kern_ubivol" ] && ubirmvol /dev/"$ubidev" -N "$CI_KERNPART" || true


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 169:
	[ "$root_ubivol" -a "$root_ubivol" != "$kern_ubivol" ] && ubirmvol /dev/$ubidev -N $CI_ROOTPART || true
                         ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.
                                                               ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.
                                                                                ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                                                                           ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ "$root_ubivol" -a "$root_ubivol" != "$kern_ubivol" ] && ubirmvol /dev/"$ubidev" -N "$CI_ROOTPART" || true


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 170:
	[ "$data_ubivol" ] && ubirmvol /dev/$ubidev -N rootfs_data || true
                           ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.
                                            ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ "$data_ubivol" ] && ubirmvol /dev/"$ubidev" -N rootfs_data || true


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 174:
		if ! ubimkvol /dev/$ubidev -N $CI_KERNPART -s $kernel_length; then
                                   ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                              ^----------^ SC2086: Double quote to prevent globbing and word splitting.
                                                              ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		if ! ubimkvol /dev/"$ubidev" -N "$CI_KERNPART" -s "$kernel_length"; then


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 188:
		if ! ubimkvol /dev/$ubidev -N $CI_ROOTPART $rootfs_size_param; then
                                   ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                              ^----------^ SC2086: Double quote to prevent globbing and word splitting.
                                                           ^----------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		if ! ubimkvol /dev/"$ubidev" -N "$CI_ROOTPART" "$rootfs_size_param"; then


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 200:
		if ! ubimkvol /dev/$ubidev -N rootfs_data $rootfs_data_size_param; then
                                   ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                                          ^---------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		if ! ubimkvol /dev/"$ubidev" -N rootfs_data "$rootfs_data_size_param"; then


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 201:
			if ! ubimkvol /dev/$ubidev -N rootfs_data -m; then
                                           ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			if ! ubimkvol /dev/"$ubidev" -N rootfs_data -m; then


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 247:
	local rootfs_length=$( (cat $1 | wc -c) 2> /dev/null)
                                    ^-- SC2086: Double quote to prevent globbing and word splitting.
                                    ^-- SC2002: Useless cat. Consider 'cmd < file | ..' or 'cmd file | ..' instead.

Did you mean: 
	local rootfs_length=$( (cat "$1" | wc -c) 2> /dev/null)


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 252:
	local root_ubivol="$(nand_find_volume $ubidev $CI_ROOTPART)"
                                              ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                                      ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local root_ubivol="$(nand_find_volume "$ubidev" "$CI_ROOTPART")"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 253:
	ubiupdatevol /dev/$root_ubivol -s $rootfs_length $1
                          ^----------^ SC2086: Double quote to prevent globbing and word splitting.
                                          ^------------^ SC2086: Double quote to prevent globbing and word splitting.
                                                         ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	ubiupdatevol /dev/"$root_ubivol" -s "$rootfs_length" "$1"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 265:
	local fit_ubivol="$(nand_find_volume $fit_ubidev "$CI_KERNPART")"
                                             ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local fit_ubivol="$(nand_find_volume "$fit_ubidev" "$CI_KERNPART")"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 266:
	ubiupdatevol /dev/$fit_ubivol -s $fit_length $fit_file
                          ^---------^ SC2086: Double quote to prevent globbing and word splitting.
                                         ^---------^ SC2086: Double quote to prevent globbing and word splitting.
                                                     ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	ubiupdatevol /dev/"$fit_ubivol" -s "$fit_length" "$fit_file"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 273:
	local kernel_mtd="$(find_mtd_index $CI_KERNPART)"
                                           ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local kernel_mtd="$(find_mtd_index "$CI_KERNPART")"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 278:
	kernel_length=$( (tar xf "$tar_file" ${board_dir}/kernel -O | wc -c) 2> /dev/null)
                                             ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	kernel_length=$( (tar xf "$tar_file" "${board_dir}"/kernel -O | wc -c) 2> /dev/null)


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 283:
	tar tf "$tar_file" ${board_dir}/root 1>/dev/null 2>/dev/null && has_rootfs=1
                           ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	tar tf "$tar_file" "${board_dir}"/root 1>/dev/null 2>/dev/null && has_rootfs=1


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 285:
		rootfs_length=$( (tar xf "$tar_file" ${board_dir}/root -O | wc -c) 2> /dev/null)
                                                     ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		rootfs_length=$( (tar xf "$tar_file" "${board_dir}"/root -O | wc -c) 2> /dev/null)


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 286:
		rootfs_type="$(identify_tar "$tar_file" ${board_dir}/root)"
                                                        ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		rootfs_type="$(identify_tar "$tar_file" "${board_dir}"/root)"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 292:
	[ "$kernel_length" != 0 -a -n "$kernel_mtd" ] && {
                                ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 293:
		tar xf "$tar_file" ${board_dir}/kernel -O | mtd write - $CI_KERNPART
                                   ^----------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                        ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		tar xf "$tar_file" "${board_dir}"/kernel -O | mtd write - "$CI_KERNPART"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 295:
	[ "$kernel_length" = 0 -o ! -z "$kernel_mtd" ] && has_kernel=
                               ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.
                                  ^-- SC2236: Use -n instead of ! -z.


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 302:
		local kern_ubivol="$( nand_find_volume $ubidev $CI_KERNPART )"
                                                       ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                                               ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		local kern_ubivol="$( nand_find_volume "$ubidev" "$CI_KERNPART" )"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 303:
		tar xf "$tar_file" ${board_dir}/kernel -O | \
                                   ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		tar xf "$tar_file" "${board_dir}"/kernel -O | \


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 304:
			ubiupdatevol /dev/$kern_ubivol -s $kernel_length -
                                          ^----------^ SC2086: Double quote to prevent globbing and word splitting.
                                                          ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			ubiupdatevol /dev/"$kern_ubivol" -s "$kernel_length" -


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 308:
		local root_ubivol="$( nand_find_volume $ubidev $CI_ROOTPART )"
                                                       ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                                               ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		local root_ubivol="$( nand_find_volume "$ubidev" "$CI_ROOTPART" )"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 309:
		tar xf "$tar_file" ${board_dir}/root -O | \
                                   ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		tar xf "$tar_file" "${board_dir}"/root -O | \


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 310:
			ubiupdatevol /dev/$root_ubivol -s $rootfs_length -
                                          ^----------^ SC2086: Double quote to prevent globbing and word splitting.
                                                          ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			ubiupdatevol /dev/"$root_ubivol" -s "$rootfs_length" -


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 317:
	local file_type=$(identify $1)
                                   ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local file_type=$(identify "$1")


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 322:
		"fit")		nand_upgrade_fit $1;;
                                                 ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		"fit")		nand_upgrade_fit "$1";;


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 323:
		"ubi")		nand_upgrade_ubinized $1;;
                                                      ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		"ubi")		nand_upgrade_ubinized "$1";;


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 324:
		"ubifs")	nand_upgrade_ubifs $1;;
                                                   ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		"ubifs")	nand_upgrade_ubifs "$1";;


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 325:
		*)		nand_upgrade_tar $1;;
                                                 ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		*)		nand_upgrade_tar "$1";;


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 345:
	local control_length=$( (tar xf $tar_file sysupgrade-$board_name/CONTROL -O | wc -c) 2> /dev/null)
                                        ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                                                             ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local control_length=$( (tar xf "$tar_file" sysupgrade-"$board_name"/CONTROL -O | wc -c) 2> /dev/null)


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 346:
	local file_type="$(identify $2)"
                                    ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local file_type="$(identify "$2")"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 348:
	[ "$control_length" = 0 -a "$file_type" != "ubi" -a "$file_type" != "ubifs" -a "$file_type" != "fit" ] && {
                                ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.
                                                         ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.
                                                                                    ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] && [ q ] as [ p -a q...
  https://www.shellcheck.net/wiki/SC2015 -- Note that A && B || C is not if-t...
