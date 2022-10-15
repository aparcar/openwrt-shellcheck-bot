
In openwrt/package/base-files/files/lib/functions/uci-defaults.sh line 8:
	[ $? = 0 ] && return
          ^-- SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.


In openwrt/package/base-files/files/lib/functions/uci-defaults.sh line 20:
	[ $? = 0 ] && return
          ^-- SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.


In openwrt/package/base-files/files/lib/functions/uci-defaults.sh line 40:
		[ -n "$opt" -a -n "$val" ] || break
                            ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/base-files/files/lib/functions/uci-defaults.sh line 42:
		[ "$opt" = "device" -a "$val" != "${val/ //}" ] && {
                                    ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.
                                                                ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.


In openwrt/package/base-files/files/lib/functions/uci-defaults.sh line 192:
				if [ ${need_tag:-0} -eq 1 -o ${want_untag:-0} -ne 1 ]; then
                                     ^------------^ SC2086: Double quote to prevent globbing and word splitting.
                                                          ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.
                                                             ^--------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
				if [ "${need_tag:-0}" -eq 1 -o "${want_untag:-0}" -ne 1 ]; then


In openwrt/package/base-files/files/lib/functions/uci-defaults.sh line 230:
			json_add_int ar8xxx_mib_type $type
                                                     ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			json_add_int ar8xxx_mib_type "$type"


In openwrt/package/base-files/files/lib/functions/uci-defaults.sh line 231:
			json_add_int ar8xxx_mib_poll_interval $interval
                                                              ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			json_add_int ar8xxx_mib_poll_interval "$interval"


In openwrt/package/base-files/files/lib/functions/uci-defaults.sh line 321:
		if [ -n "$num" ] && [ $num -eq $port ]; then
                                      ^--^ SC2086: Double quote to prevent globbing and word splitting.
                                               ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		if [ -n "$num" ] && [ "$num" -eq "$port" ]; then


In openwrt/package/base-files/files/lib/functions/uci-defaults.sh line 472:
	_ucidef_set_led_timer $1 $2 $3 "oneshot" $4 $5
                              ^-- SC2086: Double quote to prevent globbing and word splitting.
                                 ^-- SC2086: Double quote to prevent globbing and word splitting.
                                    ^-- SC2086: Double quote to prevent globbing and word splitting.
                                                 ^-- SC2086: Double quote to prevent globbing and word splitting.
                                                    ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	_ucidef_set_led_timer "$1" "$2" "$3" "oneshot" "$4" "$5"


In openwrt/package/base-files/files/lib/functions/uci-defaults.sh line 544:
	_ucidef_set_led_timer $1 $2 $3 "timer" $4 $5
                              ^-- SC2086: Double quote to prevent globbing and word splitting.
                                 ^-- SC2086: Double quote to prevent globbing and word splitting.
                                    ^-- SC2086: Double quote to prevent globbing and word splitting.
                                               ^-- SC2086: Double quote to prevent globbing and word splitting.
                                                  ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	_ucidef_set_led_timer "$1" "$2" "$3" "timer" "$4" "$5"


In openwrt/package/base-files/files/lib/functions/uci-defaults.sh line 666:
	[ -f ${CFG} ] && json_load "$(cat ${CFG})"
             ^----^ SC2086: Double quote to prevent globbing and word splitting.
                                          ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ -f "${CFG}" ] && json_load "$(cat "${CFG}")"


In openwrt/package/base-files/files/lib/functions/uci-defaults.sh line 680:
	json_dump -i -o ${CFG}
                        ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	json_dump -i -o "${CFG}"

For more information:
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] && [ q ] as [ p -a q...
  https://www.shellcheck.net/wiki/SC2015 -- Note that A && B || C is not if-t...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
