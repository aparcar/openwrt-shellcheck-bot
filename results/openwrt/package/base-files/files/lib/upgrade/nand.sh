
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
	local ubivol="$( nand_find_volume $ubidev rootfs_data )"
                                          ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local ubivol="$( nand_find_volume "$ubidev" rootfs_data )"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 103:
		ubivol="$( nand_find_volume $ubidev "$CI_ROOTPART" )"
                                            ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		ubivol="$( nand_find_volume "$ubidev" "$CI_ROOTPART" )"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 110:
	if ! mount -t ubifs /dev/$ubivol /tmp/new_root; then
                                 ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	if ! mount -t ubifs /dev/"$ubivol" /tmp/new_root; then


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 132:
	if [ -e /dev/$ubiblk ]; then
                     ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	if [ -e /dev/"$ubiblk" ]; then


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 134:
		if ! ubiblock -r /dev/$ubivol; then
                                      ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		if ! ubiblock -r /dev/"$ubivol"; then


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 150:
	[ -n "$rootfs_length" -o -n "$kernel_length" ] || return 1
                              ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 164:
			ubiformat /dev/mtd$mtdnum -y
                                          ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			ubiformat /dev/mtd"$mtdnum" -y


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 174:
				ubimkvol /dev/$ubidev -n 0 -N ubootenv -s 1MiB
                                              ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
				ubimkvol /dev/"$ubidev" -n 0 -N ubootenv -s 1MiB


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 175:
				ubimkvol /dev/$ubidev -n 1 -N ubootenv2 -s 1MiB
                                              ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
				ubimkvol /dev/"$ubidev" -n 1 -N ubootenv2 -s 1MiB


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 180:
	local kern_ubivol="$( nand_find_volume $ubidev "$CI_KERNPART" )"
                                               ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local kern_ubivol="$( nand_find_volume "$ubidev" "$CI_KERNPART" )"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 181:
	local root_ubivol="$( nand_find_volume $ubidev "$CI_ROOTPART" )"
                                               ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local root_ubivol="$( nand_find_volume "$ubidev" "$CI_ROOTPART" )"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 182:
	local data_ubivol="$( nand_find_volume $ubidev rootfs_data )"
                                               ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local data_ubivol="$( nand_find_volume "$ubidev" rootfs_data )"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 186:
	[ "$kern_ubivol" ] && { nand_remove_ubiblock $kern_ubivol || return 1; }
                                                     ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ "$kern_ubivol" ] && { nand_remove_ubiblock "$kern_ubivol" || return 1; }


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 188:
	[ "$data_ubivol" ] && { nand_remove_ubiblock $data_ubivol || return 1; }
                                                     ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ "$data_ubivol" ] && { nand_remove_ubiblock "$data_ubivol" || return 1; }


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 191:
	[ "$kern_ubivol" ] && ubirmvol /dev/$ubidev -N "$CI_KERNPART" || :
                           ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.
                                            ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ "$kern_ubivol" ] && ubirmvol /dev/"$ubidev" -N "$CI_KERNPART" || :


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 192:
	[ "$root_ubivol" ] && ubirmvol /dev/$ubidev -N "$CI_ROOTPART" || :
                           ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.
                                            ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ "$root_ubivol" ] && ubirmvol /dev/"$ubidev" -N "$CI_ROOTPART" || :


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 193:
	[ "$data_ubivol" ] && ubirmvol /dev/$ubidev -N rootfs_data || :
                           ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.
                                            ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ "$data_ubivol" ] && ubirmvol /dev/"$ubidev" -N rootfs_data || :


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 197:
		if ! ubimkvol /dev/$ubidev -N "$CI_KERNPART" -s $kernel_length; then
                                   ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                                                ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		if ! ubimkvol /dev/"$ubidev" -N "$CI_KERNPART" -s "$kernel_length"; then


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 211:
		if ! ubimkvol /dev/$ubidev -N "$CI_ROOTPART" $rootfs_size_param; then
                                   ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                                             ^----------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		if ! ubimkvol /dev/"$ubidev" -N "$CI_ROOTPART" "$rootfs_size_param"; then


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 223:
		if ! ubimkvol /dev/$ubidev -N rootfs_data $rootfs_data_size_param; then
                                   ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                                          ^---------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		if ! ubimkvol /dev/"$ubidev" -N rootfs_data "$rootfs_data_size_param"; then


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 224:
			if ! ubimkvol /dev/$ubidev -N rootfs_data -m; then
                                           ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			if ! ubimkvol /dev/"$ubidev" -N rootfs_data -m; then


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 264:
	local rootfs_length=$( (cat $1 | wc -c) 2> /dev/null)
                                    ^-- SC2086: Double quote to prevent globbing and word splitting.
                                    ^-- SC2002: Useless cat. Consider 'cmd < file | ..' or 'cmd file | ..' instead.

Did you mean: 
	local rootfs_length=$( (cat "$1" | wc -c) 2> /dev/null)


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 269:
	local root_ubivol="$(nand_find_volume $ubidev "$CI_ROOTPART")"
                                              ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local root_ubivol="$(nand_find_volume "$ubidev" "$CI_ROOTPART")"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 270:
	ubiupdatevol /dev/$root_ubivol -s $rootfs_length $1
                          ^----------^ SC2086: Double quote to prevent globbing and word splitting.
                                          ^------------^ SC2086: Double quote to prevent globbing and word splitting.
                                                         ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	ubiupdatevol /dev/"$root_ubivol" -s "$rootfs_length" "$1"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 282:
	local fit_ubivol="$(nand_find_volume $fit_ubidev "$CI_KERNPART")"
                                             ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local fit_ubivol="$(nand_find_volume "$fit_ubidev" "$CI_KERNPART")"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 283:
	ubiupdatevol /dev/$fit_ubivol -s $fit_length $fit_file
                          ^---------^ SC2086: Double quote to prevent globbing and word splitting.
                                         ^---------^ SC2086: Double quote to prevent globbing and word splitting.
                                                     ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	ubiupdatevol /dev/"$fit_ubivol" -s "$fit_length" "$fit_file"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 322:
		local root_ubivol="$( nand_find_volume $ubidev "$CI_ROOTPART" )"
                                                       ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		local root_ubivol="$( nand_find_volume "$ubidev" "$CI_ROOTPART" )"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 324:
			ubiupdatevol /dev/$root_ubivol -s $rootfs_length -
                                          ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			ubiupdatevol /dev/"$root_ubivol" -s $rootfs_length -


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 331:
			local kern_ubivol="$( nand_find_volume $ubidev "$CI_KERNPART" )"
                                                               ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			local kern_ubivol="$( nand_find_volume "$ubidev" "$CI_KERNPART" )"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 333:
				ubiupdatevol /dev/$kern_ubivol -s $kernel_length -
                                                  ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
				ubiupdatevol /dev/"$kern_ubivol" -s $kernel_length -


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 371:
	local control_length=$( (tar xf $tar_file sysupgrade-$board_name/CONTROL -O | wc -c) 2> /dev/null)
                                        ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                                                             ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local control_length=$( (tar xf "$tar_file" sysupgrade-"$board_name"/CONTROL -O | wc -c) 2> /dev/null)


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 372:
	local file_type="$(identify $2)"
                                    ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local file_type="$(identify "$2")"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 374:
	[ "$control_length" = 0 -a "$file_type" != "ubi" -a "$file_type" != "ubifs" -a "$file_type" != "fit" ] && {
                                ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.
                                                         ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.
                                                                                    ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] && [ q ] as [ p -a q...
  https://www.shellcheck.net/wiki/SC2015 -- Note that A && B || C is not if-t...
