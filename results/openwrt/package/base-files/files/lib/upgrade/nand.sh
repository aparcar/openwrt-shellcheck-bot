
In openwrt/package/base-files/files/lib/upgrade/nand.sh line 5:
. /lib/functions.sh
  ^---------------^ SC1091: Not following: /lib/functions.sh was not specified as input (see shellcheck -x).


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 18:
	local dev="/dev/$(basename $dir)"
                                   ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local dev="/dev/$(basename "$dir")"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 22:
	local devid="$(cat $dir/dev)"
                           ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local devid="$(cat "$dir"/dev)"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 25:
	mknod "$dev" c $major $minor
                       ^----^ SC2086: Double quote to prevent globbing and word splitting.
                              ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	mknod "$dev" c "$major" "$minor"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 32:
	for ubivoldir in $ubidevdir/${1}_*; do
                         ^--------^ SC2231: Quote expansions in this for loop glob to prevent wordsplitting, e.g. "$dir"/*.txt .
                                    ^--^ SC2231: Quote expansions in this for loop glob to prevent wordsplitting, e.g. "$dir"/*.txt .


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 34:
		if [ "$( cat $ubivoldir/name )" = "$2" ]; then
                             ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		if [ "$( cat "$ubivoldir"/name )" = "$2" ]; then


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 35:
			basename $ubivoldir
                                 ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			basename "$ubivoldir"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 44:
	mtdnum="$( find_mtd_index $1 )"
                                  ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	mtdnum="$( find_mtd_index "$1" )"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 48:
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


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 60:
	dd if="$1" skip=$2 bs=4 count=1 2>/dev/null | hexdump -v -n 4 -e '1/1 "%02x"'
                        ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	dd if="$1" skip="$2" bs=4 count=1 2>/dev/null | hexdump -v -n 4 -e '1/1 "%02x"'


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 64:
	( tar xf $1 $2 -O | dd bs=4 count=1 | hexdump -v -n 4 -e '1/1 "%02x"') 2> /dev/null
                 ^-- SC2086: Double quote to prevent globbing and word splitting.
                    ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	( tar xf "$1" "$2" -O | dd bs=4 count=1 | hexdump -v -n 4 -e '1/1 "%02x"') 2> /dev/null


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 93:
	identify_magic $(nand_get_magic_long "$1" "${2:-0}")
                       ^-- SC2046: Quote this to prevent word splitting.


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 97:
	identify_magic $(get_magic_long_tar "$1" "$2")
                       ^-----------------------------^ SC2046: Quote this to prevent word splitting.


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 102:
	local ubidev=$( nand_find_ubi $CI_UBIPART )
                                      ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local ubidev=$( nand_find_ubi "$CI_UBIPART" )


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 103:
	local ubivol="$( nand_find_volume $ubidev rootfs_data )"
                                          ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local ubivol="$( nand_find_volume "$ubidev" rootfs_data )"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 105:
		ubivol="$( nand_find_volume $ubidev $CI_ROOTPART )"
                                            ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                                    ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		ubivol="$( nand_find_volume "$ubidev" "$CI_ROOTPART" )"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 107:
	if ! mount -t ubifs /dev/$ubivol /tmp/new_root; then
                                 ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	if ! mount -t ubifs /dev/"$ubivol" /tmp/new_root; then


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 138:
		ubiformat /dev/mtd$mtdnum -y
                                  ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		ubiformat /dev/mtd"$mtdnum" -y


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 143:
			ubimkvol /dev/$ubidev -n 0 -N ubootenv -s 1MiB
                                      ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			ubimkvol /dev/"$ubidev" -n 0 -N ubootenv -s 1MiB


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 144:
			ubimkvol /dev/$ubidev -n 1 -N ubootenv2 -s 1MiB
                                      ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			ubimkvol /dev/"$ubidev" -n 1 -N ubootenv2 -s 1MiB


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 148:
	local kern_ubivol="$( nand_find_volume $ubidev $CI_KERNPART )"
                                               ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                                       ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local kern_ubivol="$( nand_find_volume "$ubidev" "$CI_KERNPART" )"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 149:
	local root_ubivol="$( nand_find_volume $ubidev $CI_ROOTPART )"
                                               ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                                       ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local root_ubivol="$( nand_find_volume "$ubidev" "$CI_ROOTPART" )"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 150:
	local data_ubivol="$( nand_find_volume $ubidev rootfs_data )"
                                               ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local data_ubivol="$( nand_find_volume "$ubidev" rootfs_data )"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 154:
	if [ "$root_ubivol" -a -e "/dev/$root_ubiblk" ]; then
                            ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 156:
		if ! ubiblock -r /dev/$root_ubivol; then
                                      ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		if ! ubiblock -r /dev/"$root_ubivol"; then


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 163:
	[ "$kern_ubivol" ] && ubirmvol /dev/$ubidev -N $CI_KERNPART || true
                           ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.
                                            ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                                       ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ "$kern_ubivol" ] && ubirmvol /dev/"$ubidev" -N "$CI_KERNPART" || true


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 164:
	[ "$root_ubivol" ] && ubirmvol /dev/$ubidev -N $CI_ROOTPART || true
                           ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.
                                            ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                                       ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ "$root_ubivol" ] && ubirmvol /dev/"$ubidev" -N "$CI_ROOTPART" || true


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 165:
	[ "$data_ubivol" ] && ubirmvol /dev/$ubidev -N rootfs_data || true
                           ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.
                                            ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ "$data_ubivol" ] && ubirmvol /dev/"$ubidev" -N rootfs_data || true


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 169:
		if ! ubimkvol /dev/$ubidev -N $CI_KERNPART -s $kernel_length; then
                                   ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                              ^----------^ SC2086: Double quote to prevent globbing and word splitting.
                                                              ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		if ! ubimkvol /dev/"$ubidev" -N "$CI_KERNPART" -s "$kernel_length"; then


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 182:
	if ! ubimkvol /dev/$ubidev -N $CI_ROOTPART $root_size_param; then
                           ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                      ^----------^ SC2086: Double quote to prevent globbing and word splitting.
                                                   ^--------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	if ! ubimkvol /dev/"$ubidev" -N "$CI_ROOTPART" "$root_size_param"; then


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 189:
		if ! ubimkvol /dev/$ubidev -N rootfs_data -m; then
                                   ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		if ! ubimkvol /dev/"$ubidev" -N rootfs_data -m; then


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 234:
	local rootfs_length=$( (cat $1 | wc -c) 2> /dev/null)
                                    ^-- SC2086: Double quote to prevent globbing and word splitting.
                                    ^-- SC2002: Useless cat. Consider 'cmd < file | ..' or 'cmd file | ..' instead.

Did you mean: 
	local rootfs_length=$( (cat "$1" | wc -c) 2> /dev/null)


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 239:
	local root_ubivol="$(nand_find_volume $ubidev $CI_ROOTPART)"
                                              ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                                      ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local root_ubivol="$(nand_find_volume "$ubidev" "$CI_ROOTPART")"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 240:
	ubiupdatevol /dev/$root_ubivol -s $rootfs_length $1
                          ^----------^ SC2086: Double quote to prevent globbing and word splitting.
                                          ^------------^ SC2086: Double quote to prevent globbing and word splitting.
                                                         ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	ubiupdatevol /dev/"$root_ubivol" -s "$rootfs_length" "$1"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 247:
	local kernel_mtd="$(find_mtd_index $CI_KERNPART)"
                                           ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local kernel_mtd="$(find_mtd_index "$CI_KERNPART")"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 249:
	local board_dir=$(tar tf $tar_file | grep -m 1 '^sysupgrade-.*/$')
                                 ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local board_dir=$(tar tf "$tar_file" | grep -m 1 '^sysupgrade-.*/$')


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 252:
	local kernel_length=$( (tar xf $tar_file ${board_dir}/kernel -O | wc -c) 2> /dev/null)
                                       ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                                                 ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local kernel_length=$( (tar xf "$tar_file" "${board_dir}"/kernel -O | wc -c) 2> /dev/null)


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 253:
	local rootfs_length=$( (tar xf $tar_file ${board_dir}/root -O | wc -c) 2> /dev/null)
                                       ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                                                 ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local rootfs_length=$( (tar xf "$tar_file" "${board_dir}"/root -O | wc -c) 2> /dev/null)


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 255:
	local rootfs_type="$(identify_tar "$tar_file" ${board_dir}/root)"
                                                      ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local rootfs_type="$(identify_tar "$tar_file" "${board_dir}"/root)"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 260:
	[ "$kernel_length" != 0 -a -n "$kernel_mtd" ] && {
                                ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 261:
		tar xf $tar_file ${board_dir}/kernel -O | mtd write - $CI_KERNPART
                       ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                                 ^----------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                      ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		tar xf "$tar_file" "${board_dir}"/kernel -O | mtd write - "$CI_KERNPART"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 263:
	[ "$kernel_length" = 0 -o ! -z "$kernel_mtd" ] && has_kernel=0
                               ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.
                                  ^-- SC2236: Use -n instead of ! -z.


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 269:
		local kern_ubivol="$(nand_find_volume $ubidev $CI_KERNPART)"
                                                      ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                                              ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		local kern_ubivol="$(nand_find_volume "$ubidev" "$CI_KERNPART")"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 270:
		tar xf $tar_file ${board_dir}/kernel -O | \
                       ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                                 ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		tar xf "$tar_file" "${board_dir}"/kernel -O | \


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 271:
			ubiupdatevol /dev/$kern_ubivol -s $kernel_length -
                                          ^----------^ SC2086: Double quote to prevent globbing and word splitting.
                                                          ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			ubiupdatevol /dev/"$kern_ubivol" -s "$kernel_length" -


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 274:
	local root_ubivol="$(nand_find_volume $ubidev $CI_ROOTPART)"
                                              ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                                      ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local root_ubivol="$(nand_find_volume "$ubidev" "$CI_ROOTPART")"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 275:
	tar xf $tar_file ${board_dir}/root -O | \
               ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                         ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	tar xf "$tar_file" "${board_dir}"/root -O | \


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 276:
		ubiupdatevol /dev/$root_ubivol -s $rootfs_length -
                                  ^----------^ SC2086: Double quote to prevent globbing and word splitting.
                                                  ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		ubiupdatevol /dev/"$root_ubivol" -s "$rootfs_length" -


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 283:
	local file_type=$(identify $1)
                                   ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local file_type=$(identify "$1")


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 288:
		"ubi")		nand_upgrade_ubinized $1;;
                                                      ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		"ubi")		nand_upgrade_ubinized "$1";;


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 289:
		"ubifs")	nand_upgrade_ubifs $1;;
                                                   ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		"ubifs")	nand_upgrade_ubifs "$1";;


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 290:
		*)		nand_upgrade_tar $1;;
                                                 ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		*)		nand_upgrade_tar "$1";;


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 310:
	local control_length=$( (tar xf $tar_file sysupgrade-$board_name/CONTROL -O | wc -c) 2> /dev/null)
                                        ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                                                             ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local control_length=$( (tar xf "$tar_file" sysupgrade-"$board_name"/CONTROL -O | wc -c) 2> /dev/null)


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 311:
	local file_type="$(identify $2)"
                                    ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local file_type="$(identify "$2")"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 313:
	[ "$control_length" = 0 -a "$file_type" != "ubi" -a "$file_type" != "ubifs" ] && {
                                ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.
                                                         ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] && [ q ] as [ p -a q...
  https://www.shellcheck.net/wiki/SC1091 -- Not following: /lib/functions.sh ...
