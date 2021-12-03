
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


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 146:
	[ -n "$expected_image" -a -n "$BCM53XX_FW_BOARD_ID" -a "$expected_image" != "$BCM53XX_FW_FORMAT $BCM53XX_FW_BOARD_ID" ] && {
                               ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.
                                                            ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 153:
			$(oseama info "$1" -e 0 | grep -q "Meta entry:.*type=firmware") || {
                        ^-- SC2091: Remove surrounding $() to avoid executing output.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 178:
					   ! $BCM53XX_FW_INT_IMG_EXTRACT_CMD < $1 | otrx check -; then
                                                                               ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
					   ! $BCM53XX_FW_INT_IMG_EXTRACT_CMD < "$1" | otrx check -; then


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 226:
	[ $? -ne 0 ] && {
          ^-- SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 246:
	[ $kernel_length -gt $linux_length ] && {
          ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ "$kernel_length" -gt $linux_length ] && {


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 254:
		-f $dir/kernel -b $(($linux_length + 28)) \
                                     ^-----------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 256:
	[ $? -ne 0 ] && {
          ^-- SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 264:
		ubi_length=$(($ubi_length + 131072))
                              ^---------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 267:
	[ $? -ne 0 ] && {
          ^-- SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 288:
	[ $? -ne 0 ] && {
          ^-- SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 296:
	while [ 1 ]; do
                ^-- SC2161: Instead of '[ 1 ]', use 'true'.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 297:
		[ $tmp -ge $entity_size ] && break
                           ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		[ $tmp -ge "$entity_size" ] && break


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 302:
		tmp=$(($tmp + 131072))
                       ^--^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 310:
	while [ "$(dd if=$dir/seama.entity skip=$(($ubi_offset + $ubi_length)) bs=1 count=4 2>/dev/null)" = "UBI#" ]; do
                                                   ^---------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                                 ^---------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 311:
		ubi_length=$(($ubi_length + 131072))
                              ^---------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 314:
	dd if=$dir/seama.entity of=$dir/kernel.seama bs=131072 count=$(($ubi_offset / 131072)) 2>/dev/null
                                                                        ^---------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 315:
	dd if=$dir/seama.entity of=$dir/root.ubi bs=131072 skip=$(($ubi_offset / 131072)) count=$(($ubi_length / 131072)) 2>/dev/null
                                                                   ^---------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                                                                   ^---------^ SC2004: $/${} is unnecessary on arithmetic variables.

For more information:
  https://www.shellcheck.net/wiki/SC2091 -- Remove surrounding $() to avoid e...
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] && [ q ] as [ p -a q...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
