
In openwrt/target/linux/ar71xx/base-files/lib/upgrade/dir825.sh line 12:
	dd bs=1 count=2 skip=$pos if=$mtddev 2>/dev/null | hexdump -v -n 4 -e '1/1 "%02x"'
                             ^--^ SC2086: Double quote to prevent globbing and word splitting.
                                     ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	dd bs=1 count=2 skip="$pos" if="$mtddev" 2>/dev/null | hexdump -v -n 4 -e '1/1 "%02x"'


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/dir825.sh line 19:
	magic=$(get_magic_at $mtddev 4096)
                             ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	magic=$(get_magic_at "$mtddev" 4096)


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/dir825.sh line 22:
	magic=$(get_magic_at $mtddev 20480)
                             ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	magic=$(get_magic_at "$mtddev" 20480)


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/dir825.sh line 36:
	mtd_src=$(find_mtd_part $cal_src)
                                ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	mtd_src=$(find_mtd_part "$cal_src")


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/dir825.sh line 42:
	mtd_dst=$(find_mtd_part $cal_dst)
                                ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	mtd_dst=$(find_mtd_part "$cal_dst")


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/dir825.sh line 72:
	local fw_mtd=$(find_mtd_part $fw_part)
                                     ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local fw_mtd=$(find_mtd_part "$fw_part")


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/dir825.sh line 74:
	local fw_blocks=$(($fw_length / 65536))
                           ^--------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/dir825.sh line 82:
			mtd $append write - "$fw_part"
                            ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			mtd "$append" write - "$fw_part"


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/dir825.sh line 107:
		if [ -z "$md5_img" -o -z "$md5_chk" ]; then
                                   ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/dir825.sh line 120:
		if [ $fw_part_len -lt $fw_len ]; then
                     ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		if [ "$fw_part_len" -lt $fw_len ]; then

For more information:
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] || [ q ] as [ p -o q...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
  https://www.shellcheck.net/wiki/SC2004 -- $/${} is unnecessary on arithmeti...
