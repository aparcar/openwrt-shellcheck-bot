
In openwrt/target/linux/bcm4908/base-files/lib/upgrade/platform.sh line 15:
	dd if="$1" skip=$2 bs=1 count=$3 2>/dev/null
                        ^-- SC2086: Double quote to prevent globbing and word splitting.
                                      ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	dd if="$1" skip="$2" bs=1 count="$3" 2>/dev/null


In openwrt/target/linux/bcm4908/base-files/lib/upgrade/platform.sh line 21:
	dd if="$1" skip=$2 bs=1 count=4 2>/dev/null | hexdump -v -e '1/1 "%02x"'
                        ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	dd if="$1" skip="$2" bs=1 count=4 2>/dev/null | hexdump -v -e '1/1 "%02x"'


In openwrt/target/linux/bcm4908/base-files/lib/upgrade/platform.sh line 42:
			local board_id_len=$(($header_len - 40))
                                              ^---------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/bcm4908/base-files/lib/upgrade/platform.sh line 89:
	[ -n "$expected_image" -a -n "$BCM4908_FW_BOARD_ID" -a "$BCM4908_FW_FORMAT $BCM4908_FW_BOARD_ID" != "$expected_image" ] && {
                               ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.
                                                            ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/target/linux/bcm4908/base-files/lib/upgrade/platform.sh line 143:
	mount -t jffs2 -o ro $mtd $dir || {
                             ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	mount -t jffs2 -o ro "$mtd" $dir || {


In openwrt/target/linux/bcm4908/base-files/lib/upgrade/platform.sh line 149:
	local idx=$(ls $dir/cferam.??? | sed -n 's/.*cferam\.\(\d\d\d\)/\1/p')
                    ^----------------^ SC2012: Use find instead of ls to better handle non-alphanumeric filenames.


In openwrt/target/linux/bcm4908/base-files/lib/upgrade/platform.sh line 159:
	idx=$(($(expr $idx + $inc) % 1000))
                 ^--^ SC2003: expr is antiquated. Consider rewriting this using $((..)), ${} or [[ ]].
                      ^--^ SC2086: Double quote to prevent globbing and word splitting.
                             ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	idx=$(($(expr "$idx" + "$inc") % 1000))


In openwrt/target/linux/bcm4908/base-files/lib/upgrade/platform.sh line 161:
	echo $(printf "cferam.%03d" $idx)
             ^--------------------------^ SC2046: Quote this to prevent word splitting.
             ^--------------------------^ SC2005: Useless echo? Instead of 'echo $(cmd)', just use 'cmd'.


In openwrt/target/linux/bcm4908/base-files/lib/upgrade/platform.sh line 176:
	[ $img_bootfs_size -gt $mtd_bootfs_size ] && {
          ^--------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ "$img_bootfs_size" -gt $mtd_bootfs_size ] && {


In openwrt/target/linux/bcm4908/base-files/lib/upgrade/platform.sh line 184:
	[ -n "$(find_mtd_index backup)" -o -n "$(find_mtd_index fallback)" ] && inc=0
                                        ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/target/linux/bcm4908/base-files/lib/upgrade/platform.sh line 189:
	bcm4908img bootfs -i "$1" mv cferam.000 $cferam || {
                                                ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	bcm4908img bootfs -i "$1" mv cferam.000 "$cferam" || {


In openwrt/target/linux/bcm4908/base-files/lib/upgrade/platform.sh line 247:
	bcm4908img bootfs -i "$1" mv cferam.000 $cferam || {
                                                ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	bcm4908img bootfs -i "$1" mv cferam.000 "$cferam" || {

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] && [ q ] as [ p -a q...
  https://www.shellcheck.net/wiki/SC2012 -- Use find instead of ls to better ...
