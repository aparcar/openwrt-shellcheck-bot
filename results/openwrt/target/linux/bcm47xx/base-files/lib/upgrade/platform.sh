
In openwrt/target/linux/bcm47xx/base-files/lib/upgrade/platform.sh line 8:
	dd if="$1" skip=$2 bs=1 count=4 2>/dev/null | hexdump -v -n 4 -e '1/1 "%02x"'
                        ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	dd if="$1" skip="$2" bs=1 count=4 2>/dev/null | hexdump -v -n 4 -e '1/1 "%02x"'


In openwrt/target/linux/bcm47xx/base-files/lib/upgrade/platform.sh line 14:
	echo $((0x$(dd if="$1" skip=$2 bs=1 count=4 2>/dev/null | hexdump -v -e '1/4 "%02x"')))
                                    ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo $((0x$(dd if="$1" skip="$2" bs=1 count=4 2>/dev/null | hexdump -v -e '1/4 "%02x"')))


In openwrt/target/linux/bcm47xx/base-files/lib/upgrade/platform.sh line 118:
			local board_id_len=$(($header_len - 40))
                                              ^---------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/bcm47xx/base-files/lib/upgrade/platform.sh line 123:
			[ -n "$dev_board_id" -a "chk $board_id" != "$dev_board_id" ] && {
                                             ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/target/linux/bcm47xx/base-files/lib/upgrade/platform.sh line 141:
			[ -n "$dev_pattern" -a "cybertan $pattern" != "$dev_pattern" ] && {
                                            ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/target/linux/bcm47xx/base-files/lib/upgrade/platform.sh line 161:
			[ -n "$dev_board" -a "lxl $board" != "$dev_board" ] && {
                                          ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/target/linux/bcm47xx/base-files/lib/upgrade/platform.sh line 181:
			[ -n "$dev_board_id" -a "lxl $board_id" != "$dev_board_id" ] && {
                                             ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/target/linux/bcm47xx/base-files/lib/upgrade/platform.sh line 228:
	echo -n dd skip=$hdr_len iflag=skip_bytes
                        ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo -n dd skip="$hdr_len" iflag=skip_bytes

For more information:
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] && [ q ] as [ p -a q...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
  https://www.shellcheck.net/wiki/SC2004 -- $/${} is unnecessary on arithmeti...
