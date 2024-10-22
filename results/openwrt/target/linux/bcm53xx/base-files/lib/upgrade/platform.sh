
In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 17:
	dd if="$1" skip=$2 bs=1 count=4 2>/dev/null | hexdump -v -e '1/1 "%02x"'
                        ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	dd if="$1" skip="$2" bs=1 count=4 2>/dev/null | hexdump -v -e '1/1 "%02x"'


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 23:
	echo $((0x$(dd if="$1" skip=$2 bs=1 count=4 2>/dev/null | hexdump -v -e '1/4 "%02x"')))
                                    ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo $((0x$(dd if="$1" skip="$2" bs=1 count=4 2>/dev/null | hexdump -v -e '1/4 "%02x"')))


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 75:
			local board_id_len=$(($header_len - 40))
                                              ^---------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 150:
	[ -n "$expected_image" -a -n "$BCM53XX_FW_BOARD_ID" -a "$expected_image" != "$tmp_format $BCM53XX_FW_BOARD_ID" ] && {
                               ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.
                                                            ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 157:
			$(oseama info "$1" -e 0 | grep -q "Meta entry:.*type=firmware") || {
                        ^-- SC2091: Remove surrounding $() to avoid executing output.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 182:
					   ! $BCM53XX_FW_INT_IMG_EXTRACT_CMD < $1 | otrx check -; then
                                                                               ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
					   ! $BCM53XX_FW_INT_IMG_EXTRACT_CMD < "$1" | otrx check -; then


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 234:
	[ $? -ne 0 ] && {
          ^-- SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 254:
	[ $kernel_length -gt $linux_length ] && {
          ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ "$kernel_length" -gt $linux_length ] && {


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 262:
		-f $dir/kernel -b $(($linux_length + 28)) \
                                     ^-----------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 264:
	[ $? -ne 0 ] && {
          ^-- SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 272:
		ubi_length=$(($ubi_length + 131072))
                              ^---------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 275:
	[ $? -ne 0 ] && {
          ^-- SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 296:
	[ $? -ne 0 ] && {
          ^-- SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 304:
	while [ 1 ]; do
                ^-- SC2161: Instead of '[ 1 ]', use 'true'.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 305:
		[ $tmp -ge $entity_size ] && break
                           ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		[ $tmp -ge "$entity_size" ] && break


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 310:
		tmp=$(($tmp + 131072))
                       ^--^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 318:
	while [ "$(dd if=$dir/seama.entity skip=$(($ubi_offset + $ubi_length)) bs=1 count=4 2>/dev/null)" = "UBI#" ]; do
                                                   ^---------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                                 ^---------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 319:
		ubi_length=$(($ubi_length + 131072))
                              ^---------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 322:
	dd if=$dir/seama.entity of=$dir/kernel.seama bs=131072 count=$(($ubi_offset / 131072)) 2>/dev/null
                                                                        ^---------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 323:
	dd if=$dir/seama.entity of=$dir/root.ubi bs=131072 skip=$(($ubi_offset / 131072)) count=$(($ubi_length / 131072)) 2>/dev/null
                                                                   ^---------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                                                                   ^---------^ SC2004: $/${} is unnecessary on arithmetic variables.

For more information:
  https://www.shellcheck.net/wiki/SC2091 -- Remove surrounding $() to avoid e...
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] && [ q ] as [ p -a q...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
