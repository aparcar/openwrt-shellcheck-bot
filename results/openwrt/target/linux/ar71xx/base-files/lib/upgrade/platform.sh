
In openwrt/target/linux/ar71xx/base-files/lib/upgrade/platform.sh line 5:
. /lib/functions/system.sh
  ^----------------------^ SC1091: Not following: /lib/functions/system.sh was not specified as input (see shellcheck -x).


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/platform.sh line 6:
. /lib/ar71xx.sh
  ^------------^ SC1091: Not following: /lib/ar71xx.sh was not specified as input (see shellcheck -x).


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/platform.sh line 19:
	while read dev size erasesize name; do
              ^--^ SC2162: read without -r will mangle backslashes.


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/platform.sh line 58:
	local kern_blocks=$(($kern_length / $CI_BLKSZ))
                             ^----------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                            ^-------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/platform.sh line 59:
	local root_blocks=$((0x$(dd if="$1" bs=2 skip=5 count=4 2>/dev/null) / $CI_BLKSZ))
                                                                               ^-------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/platform.sh line 72:
		      dd if="$1" bs=$CI_BLKSZ skip=$((1+$kern_blocks)) count=$root_blocks 2>/dev/null ) | \
                                                        ^----------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/platform.sh line 73:
			    mtd -r $append -F$kernelpart:$kern_length:$CI_LDADR,rootfs write - $partitions
                                   ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                             ^---------^ SC2086: Double quote to prevent globbing and word splitting.
                                                         ^----------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                                               ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			    mtd -r "$append" -F"$kernelpart":"$kern_length":$CI_LDADR,rootfs write - "$partitions"


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/platform.sh line 76:
			    mtd write - $kernelpart
                                        ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			    mtd write - "$kernelpart"


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/platform.sh line 77:
		    dd if="$1" bs=$CI_BLKSZ skip=$((1+$kern_blocks)) count=$root_blocks 2>/dev/null | \
                                                      ^----------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/platform.sh line 78:
			    mtd -r $append write - $rootfspart
                                   ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                                   ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			    mtd -r "$append" write - "$rootfspart"


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/platform.sh line 104:
	dd if="$image" bs=1 skip=$offset count=1024 2>/dev/null | tr -d "$trargs" | (
                                 ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	dd if="$image" bs=1 skip="$offset" count=1024 2>/dev/null | tr -d "$trargs" | (


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/platform.sh line 163:
	local fw_blocks=$(($fw_length / 65536))
                           ^--------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/platform.sh line 171:
			mtd $append write - "$fw_part"
                            ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			mtd "$append" write - "$fw_part"


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/platform.sh line 362:
		[ "$magic_long" != "68737173" -a "$magic_long" != "19852003" ] && {
                                              ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/platform.sh line 399:
		if [ -n "$md5_img" -a -n "$md5_chk" ] && [ "$md5_img" = "$md5_chk" ]; then
                                   ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/platform.sh line 522:
		[ "$hwid" != "$imagehwid" -o "$mid" != "$imagemid" ] && {
                                          ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/platform.sh line 574:
		nand_do_platform_check routerboard $1
                                                   ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		nand_do_platform_check routerboard "$1"


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/platform.sh line 585:
		nand_do_platform_check $board $1
                                       ^----^ SC2086: Double quote to prevent globbing and word splitting.
                                              ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		nand_do_platform_check "$board" "$1"


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/platform.sh line 630:
		merakinand_do_platform_check $board $1
                                             ^----^ SC2086: Double quote to prevent globbing and word splitting.
                                                    ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		merakinand_do_platform_check "$board" "$1"


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/platform.sh line 751:
	tar xf "$1" ${board_dir}/kernel -O | nandwrite -o "$fw_mtd" -
                    ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	tar xf "$1" "${board_dir}"/kernel -O | nandwrite -o "$fw_mtd" -

For more information:
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] && [ q ] as [ p -a q...
  https://www.shellcheck.net/wiki/SC1091 -- Not following: /lib/ar71xx.sh was...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
