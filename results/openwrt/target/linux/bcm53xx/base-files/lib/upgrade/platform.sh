
In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 10:
	dd if="$1" skip=$2 bs=1 count=4 2>/dev/null | hexdump -v -e '1/1 "%02x"'
                        ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	dd if="$1" skip="$2" bs=1 count=4 2>/dev/null | hexdump -v -e '1/1 "%02x"'


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 16:
	echo $((0x$(dd if="$1" skip=$2 bs=1 count=4 2>/dev/null | hexdump -v -e '1/4 "%02x"')))
                                    ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo $((0x$(dd if="$1" skip="$2" bs=1 count=4 2>/dev/null | hexdump -v -e '1/4 "%02x"')))


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 109:
			local board_id_len=$(($header_len - 40))
                                              ^---------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 114:
			[ -n "$dev_board_id" -a "chk $board_id" != "$dev_board_id" ] && {
                                             ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 132:
			[ -n "$dev_pattern" -a "cybertan $pattern" != "$dev_pattern" ] && {
                                            ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 152:
			[ -n "$dev_board" -a "lxl $board" != "$dev_board" ] && {
                                          ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 172:
			[ -n "$dev_board_id" -a "lxl $board_id" != "$dev_board_id" ] && {
                                             ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 194:
			[ -n "$dev_signature" -a "seama $img_signature" != "$dev_signature" ] && {
                                              ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 199:
			$(oseama info "$1" -e 0 | grep -q "Meta entry:.*type=firmware") || {
                        ^-- SC2091: Remove surrounding $() to avoid executing output.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 244:
	[ $? -ne 0 ] && {
          ^-- SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 264:
	[ $kernel_length -gt $linux_length ] && {
          ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ "$kernel_length" -gt $linux_length ] && {


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 272:
		-f $dir/kernel -b $(($linux_length + 28)) \
                                     ^-----------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 274:
	[ $? -ne 0 ] && {
          ^-- SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 282:
		ubi_length=$(($ubi_length + 131072))
                              ^---------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 285:
	[ $? -ne 0 ] && {
          ^-- SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 306:
	[ $? -ne 0 ] && {
          ^-- SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 314:
	while [ 1 ]; do
                ^-- SC2161: Instead of '[ 1 ]', use 'true'.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 315:
		[ $tmp -ge $entity_size ] && break
                           ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		[ $tmp -ge "$entity_size" ] && break


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 320:
		tmp=$(($tmp + 131072))
                       ^--^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 328:
	while [ "$(dd if=$dir/seama.entity skip=$(($ubi_offset + $ubi_length)) bs=1 count=4 2>/dev/null)" = "UBI#" ]; do
                                                   ^---------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                                 ^---------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 329:
		ubi_length=$(($ubi_length + 131072))
                              ^---------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 332:
	dd if=$dir/seama.entity of=$dir/kernel.seama bs=131072 count=$(($ubi_offset / 131072)) 2>/dev/null
                                                                        ^---------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 333:
	dd if=$dir/seama.entity of=$dir/root.ubi bs=131072 skip=$(($ubi_offset / 131072)) count=$(($ubi_length / 131072)) 2>/dev/null
                                                                   ^---------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                                                                   ^---------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 355:
	echo -n dd skip=$hdr_len iflag=skip_bytes
                        ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo -n dd skip="$hdr_len" iflag=skip_bytes


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 390:
	dd if="$1" of=$dir/image-noheader.bin bs=$offset skip=1
                                                 ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	dd if="$1" of=$dir/image-noheader.bin bs="$offset" skip=1


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 391:
	dd if=$dir/image-noheader.bin of=$dir/image-entity.bin bs=$size count=1
                                                                  ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	dd if=$dir/image-noheader.bin of=$dir/image-entity.bin bs="$size" count=1


In openwrt/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh line 405:
			"lxl")		platform_do_upgrade_nand_trx "$1" $(get_le_long_at "$1" 8);;
                                                                          ^----------------------^ SC2046: Quote this to prevent word splitting.

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
  https://www.shellcheck.net/wiki/SC2091 -- Remove surrounding $() to avoid e...
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] && [ q ] as [ p -a q...
