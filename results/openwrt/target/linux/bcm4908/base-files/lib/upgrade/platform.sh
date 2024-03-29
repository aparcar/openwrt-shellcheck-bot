
In openwrt/target/linux/bcm4908/base-files/lib/upgrade/platform.sh line 17:
	dd if="$1" skip=$2 bs=1 count=$3 2>/dev/null
                        ^-- SC2086: Double quote to prevent globbing and word splitting.
                                      ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	dd if="$1" skip="$2" bs=1 count="$3" 2>/dev/null


In openwrt/target/linux/bcm4908/base-files/lib/upgrade/platform.sh line 23:
	dd if="$1" skip=$2 bs=1 count=4 2>/dev/null | hexdump -v -e '1/4 "%02x"'
                        ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	dd if="$1" skip="$2" bs=1 count=4 2>/dev/null | hexdump -v -e '1/4 "%02x"'


In openwrt/target/linux/bcm4908/base-files/lib/upgrade/platform.sh line 29:
	dd if="$1" skip=$2 bs=1 count=4 2>/dev/null | hexdump -v -e '1/1 "%02x"'
                        ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	dd if="$1" skip="$2" bs=1 count=4 2>/dev/null | hexdump -v -e '1/1 "%02x"'


In openwrt/target/linux/bcm4908/base-files/lib/upgrade/platform.sh line 54:
			local board_id_len=$(($header_len - 40))
                                              ^---------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/bcm4908/base-files/lib/upgrade/platform.sh line 59:
			[ "$magic" = "d00dfeed" ] && {
                                                  ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.


In openwrt/target/linux/bcm4908/base-files/lib/upgrade/platform.sh line 97:
	local configuration=$($2 < $1 | fdtget - /configurations default)
                                   ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local configuration=$($2 < "$1" | fdtget - /configurations default)


In openwrt/target/linux/bcm4908/base-files/lib/upgrade/platform.sh line 103:
	local image_name=$($2 < $1 | fdtget - /configurations/$configuration $3)
                                ^-- SC2086: Double quote to prevent globbing and word splitting.
                                                              ^------------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                             ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local image_name=$($2 < "$1" | fdtget - /configurations/"$configuration" "$3")


In openwrt/target/linux/bcm4908/base-files/lib/upgrade/platform.sh line 117:
	$cmd < $1 | fdtget -p - /images/$image_name | grep -Eq "^data$" && {
               ^-- SC2086: Double quote to prevent globbing and word splitting.
                                        ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	$cmd < "$1" | fdtget -p - /images/"$image_name" | grep -Eq "^data$" && {


In openwrt/target/linux/bcm4908/base-files/lib/upgrade/platform.sh line 118:
		$cmd < $1 | fdtget -t r - /images/$image_name data
                       ^-- SC2086: Double quote to prevent globbing and word splitting.
                                                  ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		$cmd < "$1" | fdtget -t r - /images/"$image_name" data


In openwrt/target/linux/bcm4908/base-files/lib/upgrade/platform.sh line 122:
	$cmd < $1 | fdtget -p - /images/$image_name | grep -Eq "^data-position$" && {
               ^-- SC2086: Double quote to prevent globbing and word splitting.
                                        ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	$cmd < "$1" | fdtget -p - /images/"$image_name" | grep -Eq "^data-position$" && {


In openwrt/target/linux/bcm4908/base-files/lib/upgrade/platform.sh line 123:
		local data_position=$($cmd < $1 | fdtget - /images/$image_name data-position)
                                             ^-- SC2086: Double quote to prevent globbing and word splitting.
                                                                   ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		local data_position=$($cmd < "$1" | fdtget - /images/"$image_name" data-position)


In openwrt/target/linux/bcm4908/base-files/lib/upgrade/platform.sh line 124:
		local data_size=$($cmd < $1 | fdtget - /images/$image_name data-size)
                                         ^-- SC2086: Double quote to prevent globbing and word splitting.
                                                               ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		local data_size=$($cmd < "$1" | fdtget - /images/"$image_name" data-size)


In openwrt/target/linux/bcm4908/base-files/lib/upgrade/platform.sh line 125:
		$cmd < $1 2>/dev/null | dd skip=$data_position count=$data_size iflag=skip_bytes,count_bytes
                       ^-- SC2086: Double quote to prevent globbing and word splitting.
                                                ^------------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                     ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		$cmd < "$1" 2>/dev/null | dd skip="$data_position" count="$data_size" iflag=skip_bytes,count_bytes


In openwrt/target/linux/bcm4908/base-files/lib/upgrade/platform.sh line 129:
	$cmd < $1 | fdtget -p - /images/$image_name | grep -Eq "^data-offset" && {
               ^-- SC2086: Double quote to prevent globbing and word splitting.
                                        ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	$cmd < "$1" | fdtget -p - /images/"$image_name" | grep -Eq "^data-offset" && {


In openwrt/target/linux/bcm4908/base-files/lib/upgrade/platform.sh line 130:
		local data_offset=$($cmd < $1 | fdtget - /images/$image_name data-offset)
                                           ^-- SC2086: Double quote to prevent globbing and word splitting.
                                                                 ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		local data_offset=$($cmd < "$1" | fdtget - /images/"$image_name" data-offset)


In openwrt/target/linux/bcm4908/base-files/lib/upgrade/platform.sh line 133:
		local data_size=$($cmd < $1 | fdtget - /images/$image_name data-size)
                                         ^-- SC2086: Double quote to prevent globbing and word splitting.
                                                               ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		local data_size=$($cmd < "$1" | fdtget - /images/"$image_name" data-size)


In openwrt/target/linux/bcm4908/base-files/lib/upgrade/platform.sh line 134:
		$cmd < $1 2>/dev/null | dd skip=$data_position count=$data_size iflag=skip_bytes,count_bytes
                       ^-- SC2086: Double quote to prevent globbing and word splitting.
                                                                     ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		$cmd < "$1" 2>/dev/null | dd skip=$data_position count="$data_size" iflag=skip_bytes,count_bytes


In openwrt/target/linux/bcm4908/base-files/lib/upgrade/platform.sh line 178:
	cat /tmp/env.head /tmp/env.body | ubiupdatevol /dev/ubi0_1 -s $tmp -
                                                                      ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	cat /tmp/env.head /tmp/env.body | ubiupdatevol /dev/ubi0_1 -s "$tmp" -


In openwrt/target/linux/bcm4908/base-files/lib/upgrade/platform.sh line 188:
	[ -n "$(platform_pkgtb_get_image_name "$1" "$cmd" "bootfs")" -a -n "$(platform_pkgtb_get_image_name "$1" "$cmd" "rootfs")" ]
                                                                     ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/target/linux/bcm4908/base-files/lib/upgrade/platform.sh line 206:
	[ -n "$expected_image" -a -n "$BCM4908_FW_BOARD_ID" -a "$BCM4908_FW_FORMAT $BCM4908_FW_BOARD_ID" != "$expected_image" ] && {
                               ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.
                                                            ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/target/linux/bcm4908/base-files/lib/upgrade/platform.sh line 266:
	local ubidev=$(nand_find_ubi $CI_UBIPART)
                                     ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local ubidev=$(nand_find_ubi "$CI_UBIPART")


In openwrt/target/linux/bcm4908/base-files/lib/upgrade/platform.sh line 267:
	local ubivol="$(nand_find_volume $ubidev rootfs_data)"
                                         ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local ubivol="$(nand_find_volume "$ubidev" rootfs_data)"


In openwrt/target/linux/bcm4908/base-files/lib/upgrade/platform.sh line 286:
	ubirmvol /dev/ubi0 -N bootfs$idx
                                    ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	ubirmvol /dev/ubi0 -N bootfs"$idx"


In openwrt/target/linux/bcm4908/base-files/lib/upgrade/platform.sh line 287:
	ubimkvol /dev/ubi0 -n $bootfs_id -N bootfs$idx -t static -s $size
                                                  ^--^ SC2086: Double quote to prevent globbing and word splitting.
                                                                    ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	ubimkvol /dev/ubi0 -n $bootfs_id -N bootfs"$idx" -t static -s "$size"


In openwrt/target/linux/bcm4908/base-files/lib/upgrade/platform.sh line 288:
	platform_pkgtb_get_image "$1" "$cmd" "bootfs" | ubiupdatevol /dev/ubi0_$bootfs_id -s $size -
                                                                                             ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	platform_pkgtb_get_image "$1" "$cmd" "bootfs" | ubiupdatevol /dev/ubi0_$bootfs_id -s "$size" -


In openwrt/target/linux/bcm4908/base-files/lib/upgrade/platform.sh line 291:
	ubirmvol /dev/ubi0 -N rootfs$idx
                                    ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	ubirmvol /dev/ubi0 -N rootfs"$idx"


In openwrt/target/linux/bcm4908/base-files/lib/upgrade/platform.sh line 292:
	ubimkvol /dev/ubi0 -n $rootfs_id -N rootfs$idx -t dynamic -s $size
                                                  ^--^ SC2086: Double quote to prevent globbing and word splitting.
                                                                     ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	ubimkvol /dev/ubi0 -n $rootfs_id -N rootfs"$idx" -t dynamic -s "$size"


In openwrt/target/linux/bcm4908/base-files/lib/upgrade/platform.sh line 293:
	platform_pkgtb_get_image "$1" "$cmd" "rootfs" | ubiupdatevol /dev/ubi0_$rootfs_id -s $size -
                                                                                             ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	platform_pkgtb_get_image "$1" "$cmd" "rootfs" | ubiupdatevol /dev/ubi0_$rootfs_id -s "$size" -


In openwrt/target/linux/bcm4908/base-files/lib/upgrade/platform.sh line 295:
	platform_pkgtb_commit $idx
                              ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	platform_pkgtb_commit "$idx"


In openwrt/target/linux/bcm4908/base-files/lib/upgrade/platform.sh line 315:
	mount -t jffs2 -o ro $mtd $dir || {
                             ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	mount -t jffs2 -o ro "$mtd" $dir || {


In openwrt/target/linux/bcm4908/base-files/lib/upgrade/platform.sh line 321:
	local idx=$(ls $dir/cferam.??? | sed -n 's/.*cferam\.\(\d\d\d\)/\1/p')
                    ^----------------^ SC2012: Use find instead of ls to better handle non-alphanumeric filenames.


In openwrt/target/linux/bcm4908/base-files/lib/upgrade/platform.sh line 331:
	idx=$(($(expr $idx + $inc) % 1000))
                 ^--^ SC2003: expr is antiquated. Consider rewriting this using $((..)), ${} or [[ ]].
                      ^--^ SC2086: Double quote to prevent globbing and word splitting.
                             ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	idx=$(($(expr "$idx" + "$inc") % 1000))


In openwrt/target/linux/bcm4908/base-files/lib/upgrade/platform.sh line 333:
	echo $(printf "cferam.%03d" $idx)
             ^--------------------------^ SC2046: Quote this to prevent word splitting.
             ^--------------------------^ SC2005: Useless echo? Instead of 'echo $(cmd)', just use 'cmd'.


In openwrt/target/linux/bcm4908/base-files/lib/upgrade/platform.sh line 348:
	[ $img_bootfs_size -gt $mtd_bootfs_size ] && {
          ^--------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ "$img_bootfs_size" -gt $mtd_bootfs_size ] && {


In openwrt/target/linux/bcm4908/base-files/lib/upgrade/platform.sh line 356:
	[ -n "$(find_mtd_index backup)" -o -n "$(find_mtd_index fallback)" ] && inc=0
                                        ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/target/linux/bcm4908/base-files/lib/upgrade/platform.sh line 361:
	bcm4908img bootfs -i "$1" mv cferam.000 $cferam || {
                                                ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	bcm4908img bootfs -i "$1" mv cferam.000 "$cferam" || {


In openwrt/target/linux/bcm4908/base-files/lib/upgrade/platform.sh line 418:
	[ "$BCM4908_FW_FORMAT" = "pkgtb" -o "$BCM4908_FW_INT_IMG_FORMAT" = "pkgtb" ] && {
                                         ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/target/linux/bcm4908/base-files/lib/upgrade/platform.sh line 429:
	bcm4908img bootfs -i "$1" mv cferam.000 $cferam || {
                                                ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	bcm4908img bootfs -i "$1" mv cferam.000 "$cferam" || {

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] && [ q ] as [ p -a q...
  https://www.shellcheck.net/wiki/SC2012 -- Use find instead of ls to better ...
