
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
	(${3}cat "$1" | dd bs=4 "skip=${2:-0}" count=1 | hexdump -v -n 4 -e '1/1 "%02x"') 2> /dev/null
         ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	("${3}"cat "$1" | dd bs=4 "skip=${2:-0}" count=1 | hexdump -v -n 4 -e '1/1 "%02x"') 2> /dev/null


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 63:
	(tar xO${3}f "$1" "$2" | dd bs=4 count=1 | hexdump -v -n 4 -e '1/1 "%02x"') 2> /dev/null
               ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	(tar xO"${3}"f "$1" "$2" | dd bs=4 count=1 | hexdump -v -n 4 -e '1/1 "%02x"') 2> /dev/null


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 95:
	identify_magic $(nand_get_magic_long "$@")
                       ^-------------------------^ SC2046: Quote this to prevent word splitting.


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 99:
	identify_magic $(get_magic_long_tar "$@")
                       ^------------------------^ SC2046: Quote this to prevent word splitting.


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 108:
	local ubivol="$( nand_find_volume $ubidev rootfs_data )"
                                          ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local ubivol="$( nand_find_volume "$ubidev" rootfs_data )"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 110:
		ubivol="$( nand_find_volume $ubidev "$CI_ROOTPART" )"
                                            ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		ubivol="$( nand_find_volume "$ubidev" "$CI_ROOTPART" )"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 117:
	if ! mount -t ubifs /dev/$ubivol /tmp/new_root; then
                                 ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	if ! mount -t ubifs /dev/"$ubivol" /tmp/new_root; then


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 141:
		umount "/dev/$ubiblk" && echo "unmounted /dev/$ubiblk" || :
                                      ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 163:
			umount "/dev/$ubivol" && echo "unmounted /dev/$ubivol" || :
                                              ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 181:
	[ -n "$rootfs_length" -o -n "$kernel_length" ] || return 1
                              ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 195:
			ubiformat /dev/mtd$mtdnum -y
                                          ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			ubiformat /dev/mtd"$mtdnum" -y


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 205:
				ubimkvol /dev/$ubidev -n 0 -N ubootenv -s 1MiB
                                              ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
				ubimkvol /dev/"$ubidev" -n 0 -N ubootenv -s 1MiB


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 206:
				ubimkvol /dev/$ubidev -n 1 -N ubootenv2 -s 1MiB
                                              ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
				ubimkvol /dev/"$ubidev" -n 1 -N ubootenv2 -s 1MiB


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 211:
	local kern_ubivol="$( nand_find_volume $ubidev "$CI_KERNPART" )"
                                               ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local kern_ubivol="$( nand_find_volume "$ubidev" "$CI_KERNPART" )"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 212:
	local root_ubivol="$( nand_find_volume $ubidev "$CI_ROOTPART" )"
                                               ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local root_ubivol="$( nand_find_volume "$ubidev" "$CI_ROOTPART" )"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 213:
	local data_ubivol="$( nand_find_volume $ubidev rootfs_data )"
                                               ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local data_ubivol="$( nand_find_volume "$ubidev" rootfs_data )"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 217:
	[ "$kern_ubivol" ] && { nand_remove_ubiblock $kern_ubivol || return 1; }
                                                     ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ "$kern_ubivol" ] && { nand_remove_ubiblock "$kern_ubivol" || return 1; }


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 219:
	[ "$data_ubivol" ] && { nand_remove_ubiblock $data_ubivol || return 1; }
                                                     ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ "$data_ubivol" ] && { nand_remove_ubiblock "$data_ubivol" || return 1; }


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 222:
	[ "$kern_ubivol" ] && ubirmvol /dev/$ubidev -N "$CI_KERNPART" || :
                           ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.
                                            ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ "$kern_ubivol" ] && ubirmvol /dev/"$ubidev" -N "$CI_KERNPART" || :


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 223:
	[ "$root_ubivol" ] && ubirmvol /dev/$ubidev -N "$CI_ROOTPART" || :
                           ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.
                                            ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ "$root_ubivol" ] && ubirmvol /dev/"$ubidev" -N "$CI_ROOTPART" || :


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 224:
	[ "$data_ubivol" ] && ubirmvol /dev/$ubidev -N rootfs_data || :
                           ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.
                                            ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ "$data_ubivol" ] && ubirmvol /dev/"$ubidev" -N rootfs_data || :


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 228:
		if ! ubimkvol /dev/$ubidev -N "$CI_KERNPART" -s $kernel_length; then
                                   ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                                                ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		if ! ubimkvol /dev/"$ubidev" -N "$CI_KERNPART" -s "$kernel_length"; then


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 242:
		if ! ubimkvol /dev/$ubidev -N "$CI_ROOTPART" $rootfs_size_param; then
                                   ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                                             ^----------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		if ! ubimkvol /dev/"$ubidev" -N "$CI_ROOTPART" "$rootfs_size_param"; then


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 254:
		if ! ubimkvol /dev/$ubidev -N rootfs_data $rootfs_data_size_param; then
                                   ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                                          ^---------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		if ! ubimkvol /dev/"$ubidev" -N rootfs_data "$rootfs_data_size_param"; then


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 255:
			if ! ubimkvol /dev/$ubidev -N rootfs_data -m; then
                                           ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			if ! ubimkvol /dev/"$ubidev" -N rootfs_data -m; then


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 273:
	${gz}cat "$ubi_file" | ubiformat "/dev/mtd$mtdnum" -y -f - && ubiattach -m "$mtdnum"
        ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	"${gz}"cat "$ubi_file" | ubiformat "/dev/mtd$mtdnum" -y -f - && ubiattach -m "$mtdnum"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 281:
	local ubifs_length=$( (${gz}cat "$ubifs_file" | wc -c) 2> /dev/null)
                               ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local ubifs_length=$( ("${gz}"cat "$ubifs_file" | wc -c) 2> /dev/null)


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 286:
	local root_ubivol="$(nand_find_volume $ubidev "$CI_ROOTPART")"
                                              ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local root_ubivol="$(nand_find_volume "$ubidev" "$CI_ROOTPART")"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 287:
	${gz}cat "$ubifs_file" | ubiupdatevol /dev/$root_ubivol -s "$ubifs_length" -
        ^---^ SC2086: Double quote to prevent globbing and word splitting.
                                                   ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	"${gz}"cat "$ubifs_file" | ubiupdatevol /dev/"$root_ubivol" -s "$ubifs_length" -


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 295:
	local fit_length=$( (${gz}cat "$fit_file" | wc -c) 2> /dev/null)
                             ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local fit_length=$( ("${gz}"cat "$fit_file" | wc -c) 2> /dev/null)


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 300:
	local fit_ubivol="$(nand_find_volume $fit_ubidev "$CI_KERNPART")"
                                             ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local fit_ubivol="$(nand_find_volume "$fit_ubidev" "$CI_KERNPART")"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 301:
	${gz}cat "$fit_file" | ubiupdatevol /dev/$fit_ubivol -s "$fit_length" -
        ^---^ SC2086: Double quote to prevent globbing and word splitting.
                                                 ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	"${gz}"cat "$fit_file" | ubiupdatevol /dev/"$fit_ubivol" -s "$fit_length" -


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 310:
	local board_dir="$(tar t${gz}f "$tar_file" | grep -m 1 '^sysupgrade-.*/$')"
                                ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local board_dir="$(tar t"${gz}"f "$tar_file" | grep -m 1 '^sysupgrade-.*/$')"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 316:
		kernel_length=$( (tar xO${gz}f "$tar_file" "$board_dir/kernel" | wc -c) 2> /dev/null)
                                        ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		kernel_length=$( (tar xO"${gz}"f "$tar_file" "$board_dir/kernel" | wc -c) 2> /dev/null)


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 319:
	local rootfs_length=$( (tar xO${gz}f "$tar_file" "$board_dir/root" | wc -c) 2> /dev/null)
                                      ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local rootfs_length=$( (tar xO"${gz}"f "$tar_file" "$board_dir/root" | wc -c) 2> /dev/null)


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 341:
		local root_ubivol="$( nand_find_volume $ubidev "$CI_ROOTPART" )"
                                                       ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		local root_ubivol="$( nand_find_volume "$ubidev" "$CI_ROOTPART" )"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 342:
		tar xO${gz}f "$tar_file" "$board_dir/root" | \
                      ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		tar xO"${gz}"f "$tar_file" "$board_dir/root" | \


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 343:
			ubiupdatevol /dev/$root_ubivol -s "$rootfs_length" -
                                          ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			ubiupdatevol /dev/"$root_ubivol" -s "$rootfs_length" -


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 347:
			tar xO${gz}f "$tar_file" "$board_dir/kernel" | \
                              ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			tar xO"${gz}"f "$tar_file" "$board_dir/kernel" | \


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 350:
			local kern_ubivol="$( nand_find_volume $ubidev "$CI_KERNPART" )"
                                                               ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			local kern_ubivol="$( nand_find_volume "$ubidev" "$CI_KERNPART" )"


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 351:
			tar xO${gz}f "$tar_file" "$board_dir/kernel" | \
                              ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			tar xO"${gz}"f "$tar_file" "$board_dir/kernel" | \


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 352:
				ubiupdatevol /dev/$kern_ubivol -s "$kernel_length" -
                                                  ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
				ubiupdatevol /dev/"$kern_ubivol" -s "$kernel_length" -


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 377:
	if ! tar xO${gz}f "$file" > /dev/null; then
                   ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	if ! tar xO"${gz}"f "$file" > /dev/null; then


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 460:
	local control_length=$( (tar xO${gz}f "$file" "sysupgrade-$board_name/CONTROL" | wc -c) 2> /dev/null)
                                       ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local control_length=$( (tar xO"${gz}"f "$file" "sysupgrade-$board_name/CONTROL" | wc -c) 2> /dev/null)


In openwrt/package/base-files/files/lib/upgrade/nand.sh line 466:
		if [ "$file_type" != "fit" -a "$file_type" != "ubi" -a "$file_type" != "ubifs" ]; then
                                           ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.
                                                                    ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] && [ q ] as [ p -a q...
  https://www.shellcheck.net/wiki/SC2015 -- Note that A && B || C is not if-t...
