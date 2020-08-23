
In openwrt/target/linux/ar71xx/base-files/lib/ar71xx.sh line 16:
	dev=$(find_mtd_part $mtd)
                            ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	dev=$(find_mtd_part "$mtd")


In openwrt/target/linux/ar71xx/base-files/lib/ar71xx.sh line 19:
	dd if=$dev iflag=skip_bytes bs=$size skip=$offset count=1 2>/dev/null | hexdump -v -e "1/1 \"$format\""
              ^--^ SC2086: Double quote to prevent globbing and word splitting.
                                       ^---^ SC2086: Double quote to prevent globbing and word splitting.
                                                  ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	dd if="$dev" iflag=skip_bytes bs="$size" skip="$offset" count=1 2>/dev/null | hexdump -v -e "1/1 \"$format\""


In openwrt/target/linux/ar71xx/base-files/lib/ar71xx.sh line 137:
	dd bs=8 count=1 skip=0 if=$part 2>/dev/null | hexdump -v -n 8 -e '1/1 "%02x"'
                                  ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	dd bs=8 count=1 skip=0 if="$part" 2>/dev/null | hexdump -v -n 8 -e '1/1 "%02x"'


In openwrt/target/linux/ar71xx/base-files/lib/ar71xx.sh line 145:
	local rev="$(LC_CTYPE=C awk -v 'FS=[^[:print:]]' '{print $1; exit}' $dev)"
                                                                            ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local rev="$(LC_CTYPE=C awk -v 'FS=[^[:print:]]' '{print $1; exit}' "$dev")"


In openwrt/target/linux/ar71xx/base-files/lib/ar71xx.sh line 155:
	dd if=$part bs=4 count=1 skip=16 2>/dev/null | hexdump -v -n 4 -e '1/1 "%02x"'
              ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	dd if="$part" bs=4 count=1 skip=16 2>/dev/null | hexdump -v -n 4 -e '1/1 "%02x"'


In openwrt/target/linux/ar71xx/base-files/lib/ar71xx.sh line 164:
	dd if=$part bs=4 count=1 skip=17 2>/dev/null | hexdump -v -n 4 -e '1/1 "%02x"'
              ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	dd if="$part" bs=4 count=1 skip=17 2>/dev/null | hexdump -v -n 4 -e '1/1 "%02x"'


In openwrt/target/linux/ar71xx/base-files/lib/ar71xx.sh line 220:
		[ "$hwid" = '07100002' -a "$mid" = '00000002' ] && hwver=' v2.1'
                                       ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/target/linux/ar71xx/base-files/lib/ar71xx.sh line 246:
		[ "$hwid" = '08020002' -a "$mid" = '00000002' ] && hwver=' v2'
                                       ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/target/linux/ar71xx/base-files/lib/ar71xx.sh line 259:
		[ "$hwid" = '08410002' -a "$mid" = '00000002' ] && hwver=' v1.5'
                                       ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/target/linux/ar71xx/base-files/lib/ar71xx.sh line 285:
		[ "$hwid" = "09410002" -a "$mid" = "00420001" ] && {
                                       ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/target/linux/ar71xx/base-files/lib/ar71xx.sh line 379:
	dd if=$part bs=1 skip=4360 2>/dev/null | head -n 1
              ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	dd if="$part" bs=1 skip=4360 2>/dev/null | head -n 1


In openwrt/target/linux/ar71xx/base-files/lib/ar71xx.sh line 384:
	local oIFS="$IFS"; IFS=":"; set -- $model_string; IFS="$oIFS"
                                           ^-----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local oIFS="$IFS"; IFS=":"; set -- "$model_string"; IFS="$oIFS"


In openwrt/target/linux/ar71xx/base-files/lib/ar71xx.sh line 396:
	dd if=$part iflag=skip_bytes bs=64 skip=4360 count=1 2>/dev/null | tr -d '\r\0' | head -n 1
              ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	dd if="$part" iflag=skip_bytes bs=64 skip=4360 count=1 2>/dev/null | tr -d '\r\0' | head -n 1

For more information:
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] && [ q ] as [ p -a q...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
