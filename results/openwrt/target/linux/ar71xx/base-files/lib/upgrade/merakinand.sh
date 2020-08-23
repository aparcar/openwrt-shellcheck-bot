
In openwrt/target/linux/ar71xx/base-files/lib/upgrade/merakinand.sh line 14:
	dd bs=1 count=2 skip=$pos if=$mtddev 2>/dev/null | hexdump -v -n 4 -e '1/1 "%02x"'
                             ^--^ SC2086: Double quote to prevent globbing and word splitting.
                                     ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	dd bs=1 count=2 skip="$pos" if="$mtddev" 2>/dev/null | hexdump -v -n 4 -e '1/1 "%02x"'


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/merakinand.sh line 24:
		magic=$(get_magic_at $mtddev 4096)
                                     ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		magic=$(get_magic_at "$mtddev" 4096)


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/merakinand.sh line 27:
		magic=$(get_magic_at $mtddev 20480)
                                     ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		magic=$(get_magic_at "$mtddev" 20480)


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/merakinand.sh line 30:
		magic=$(get_magic_at $mtddev 36864)
                                     ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		magic=$(get_magic_at "$mtddev" 36864)


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/merakinand.sh line 36:
		magic=$(get_magic_at $mtddev 4096)
                                     ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		magic=$(get_magic_at "$mtddev" 4096)


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/merakinand.sh line 39:
		magic=$(get_magic_at $mtddev 86016)
                                     ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		magic=$(get_magic_at "$mtddev" 86016)


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/merakinand.sh line 53:
	local ubidev="$(nand_find_ubi $CI_UBIPART)"
                                      ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local ubidev="$(nand_find_ubi "$CI_UBIPART")"


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/merakinand.sh line 62:
		mtd_src="$(find_mtd_chardev $cal_src)"
                                            ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		mtd_src="$(find_mtd_chardev "$cal_src")"


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/merakinand.sh line 71:
		mtd_dst="$(nand_find_volume $ubidev $cal_dst)"
                                            ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                                    ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		mtd_dst="$(nand_find_volume "$ubidev" "$cal_dst")"


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/merakinand.sh line 101:
	local image_magic_word=`(tar xf $tar_file sysupgrade-$board_name/kernel -O 2>/dev/null | dd bs=1 count=4 skip=0 2>/dev/null | hexdump -v -n 4 -e '1/1 "%02x"')`
                               ^-- SC2006: Use $(...) notation instead of legacy backticked `...`.
                                        ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                                                             ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local image_magic_word=$((tar xf "$tar_file" sysupgrade-"$board_name"/kernel -O 2>/dev/null | dd bs=1 count=4 skip=0 2>/dev/null | hexdump -v -n 4 -e '1/1 "%02x"'))


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/merakinand.sh line 123:
	local control_length=`(tar xf $tar_file sysupgrade-$board_name/CONTROL -O | wc -c) 2> /dev/null`
                             ^-- SC2006: Use $(...) notation instead of legacy backticked `...`.
                                      ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                                                           ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local control_length=$((tar xf "$tar_file" sysupgrade-"$board_name"/CONTROL -O | wc -c) 2> /dev/null)


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/merakinand.sh line 124:
	local file_type="$(identify_tar $2 sysupgrade-$board_name/root)"
                                        ^-- SC2086: Double quote to prevent globbing and word splitting.
                                                      ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local file_type="$(identify_tar "$2" sysupgrade-"$board_name"/root)"


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/merakinand.sh line 125:
	local kernel_magic="$(merakinand_do_kernel_check $1 $2)"
                                                         ^-- SC2086: Double quote to prevent globbing and word splitting.
                                                            ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local kernel_magic="$(merakinand_do_kernel_check "$1" "$2")"


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/merakinand.sh line 130:
		[ "$control_length" = 0 -o "$file_type" != "squashfs" -o "$kernel_magic" != "pass" ] && {
                                        ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.
                                                                      ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/merakinand.sh line 153:
		nand_do_upgrade $1
                                ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		nand_do_upgrade "$1"


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/merakinand.sh line 158:
		nand_do_upgrade $1
                                ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		nand_do_upgrade "$1"

For more information:
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] || [ q ] as [ p -o q...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
  https://www.shellcheck.net/wiki/SC2006 -- Use $(...) notation instead of le...
