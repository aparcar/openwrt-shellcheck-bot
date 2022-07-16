
In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 16:
	dd if="$1" skip=$2 bs=1 count=4 2>/dev/null | hexdump -v -e '1/1 "%02x"'
                        ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	dd if="$1" skip="$2" bs=1 count=4 2>/dev/null | hexdump -v -e '1/1 "%02x"'


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 22:
	echo $((0x$(dd if="$1" skip=$2 bs=1 count=4 2>/dev/null | hexdump -v -e '1/4 "%02x"')))
                                    ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo $((0x$(dd if="$1" skip="$2" bs=1 count=4 2>/dev/null | hexdump -v -e '1/4 "%02x"')))


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 73:
			local board_id_len=$(($header_len - 40))
                                              ^---------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 148:
	[ -n "$expected_image" -a -n "$BCM53XX_FW_BOARD_ID" -a "$expected_image" != "$tmp_format $BCM53XX_FW_BOARD_ID" ] && {
                               ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.
                                                            ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 155:
			$(oseama info "$1" -e 0 | grep -q "Meta entry:.*type=firmware") || {
                        ^-- SC2091: Remove surrounding $() to avoid executing output.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 180:
					   ! $BCM53XX_FW_INT_IMG_EXTRACT_CMD < $1 | otrx check -; then
                                                                               ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
					   ! $BCM53XX_FW_INT_IMG_EXTRACT_CMD < "$1" | otrx check -; then


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 232:
	[ $? -ne 0 ] && {
          ^-- SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 252:
	[ $kernel_length -gt $linux_length ] && {
          ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ "$kernel_length" -gt $linux_length ] && {


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 260:
		-f $dir/kernel -b $(($linux_length + 28)) \
                                     ^-----------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 262:
	[ $? -ne 0 ] && {
          ^-- SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 270:
		ubi_length=$(($ubi_length + 131072))
                              ^---------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 273:
	[ $? -ne 0 ] && {
          ^-- SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 294:
	[ $? -ne 0 ] && {
          ^-- SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 302:
	while [ 1 ]; do
                ^-- SC2161: Instead of '[ 1 ]', use 'true'.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 303:
		[ $tmp -ge $entity_size ] && break
                           ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		[ $tmp -ge "$entity_size" ] && break


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 308:
		tmp=$(($tmp + 131072))
                       ^--^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 316:
	while [ "$(dd if=$dir/seama.entity skip=$(($ubi_offset + $ubi_length)) bs=1 count=4 2>/dev/null)" = "UBI#" ]; do
                                                   ^---------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                                 ^---------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 317:
		ubi_length=$(($ubi_length + 131072))
                              ^---------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 320:
	dd if=$dir/seama.entity of=$dir/kernel.seama bs=131072 count=$(($ubi_offset / 131072)) 2>/dev/null
                                                                        ^---------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 321:
	dd if=$dir/seama.entity of=$dir/root.ubi bs=131072 skip=$(($ubi_offset / 131072)) count=$(($ubi_length / 131072)) 2>/dev/null
                                                                   ^---------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                                                                   ^---------^ SC2004: $/${} is unnecessary on arithmetic variables.

For more information:
  https://www.shellcheck.net/wiki/SC2091 -- Remove surrounding $() to avoid e...
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] && [ q ] as [ p -a q...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
