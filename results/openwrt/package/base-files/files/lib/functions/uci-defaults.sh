
In openwrt/package/base-files/files/lib/functions/uci-defaults.sh line 1:
#!/bin/ash
^--------^ SC2187: Ash scripts will be checked as Dash. Add '# shellcheck shell=dash' to silence.


In openwrt/package/base-files/files/lib/functions/uci-defaults.sh line 3:
. /lib/functions.sh
  ^---------------^ SC1091: Not following: /lib/functions.sh was not specified as input (see shellcheck -x).


In openwrt/package/base-files/files/lib/functions/uci-defaults.sh line 4:
. /usr/share/libubox/jshn.sh
  ^------------------------^ SC1091: Not following: /usr/share/libubox/jshn.sh was not specified as input (see shellcheck -x).


In openwrt/package/base-files/files/lib/functions/uci-defaults.sh line 10:
	[ $? = 0 ] && return
          ^-- SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.


In openwrt/package/base-files/files/lib/functions/uci-defaults.sh line 22:
	[ $? = 0 ] && return
          ^-- SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.


In openwrt/package/base-files/files/lib/functions/uci-defaults.sh line 42:
		[ -n "$opt" -a -n "$val" ] || break
                            ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/base-files/files/lib/functions/uci-defaults.sh line 160:
				if [ ${need_tag:-0} -eq 1 -o ${want_untag:-0} -ne 1 ]; then
                                     ^------------^ SC2086: Double quote to prevent globbing and word splitting.
                                                          ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.
                                                             ^--------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
				if [ "${need_tag:-0}" -eq 1 -o "${want_untag:-0}" -ne 1 ]; then


In openwrt/package/base-files/files/lib/functions/uci-defaults.sh line 198:
			json_add_int ar8xxx_mib_type $type
                                                     ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			json_add_int ar8xxx_mib_type "$type"


In openwrt/package/base-files/files/lib/functions/uci-defaults.sh line 199:
			json_add_int ar8xxx_mib_poll_interval $interval
                                                              ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			json_add_int ar8xxx_mib_poll_interval "$interval"


In openwrt/package/base-files/files/lib/functions/uci-defaults.sh line 289:
		if [ -n "$num" ] && [ $num -eq $port ]; then
                                      ^--^ SC2086: Double quote to prevent globbing and word splitting.
                                               ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		if [ -n "$num" ] && [ "$num" -eq "$port" ]; then


In openwrt/package/base-files/files/lib/functions/uci-defaults.sh line 431:
	_ucidef_set_led_timer $1 $2 $3 "oneshot" $4 $5
                              ^-- SC2086: Double quote to prevent globbing and word splitting.
                                 ^-- SC2086: Double quote to prevent globbing and word splitting.
                                    ^-- SC2086: Double quote to prevent globbing and word splitting.
                                                 ^-- SC2086: Double quote to prevent globbing and word splitting.
                                                    ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	_ucidef_set_led_timer "$1" "$2" "$3" "oneshot" "$4" "$5"


In openwrt/package/base-files/files/lib/functions/uci-defaults.sh line 503:
	_ucidef_set_led_timer $1 $2 $3 "timer" $4 $5
                              ^-- SC2086: Double quote to prevent globbing and word splitting.
                                 ^-- SC2086: Double quote to prevent globbing and word splitting.
                                    ^-- SC2086: Double quote to prevent globbing and word splitting.
                                               ^-- SC2086: Double quote to prevent globbing and word splitting.
                                                  ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	_ucidef_set_led_timer "$1" "$2" "$3" "timer" "$4" "$5"


In openwrt/package/base-files/files/lib/functions/uci-defaults.sh line 610:
	[ -f ${CFG} ] && json_load "$(cat ${CFG})"
             ^----^ SC2086: Double quote to prevent globbing and word splitting.
                                          ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ -f "${CFG}" ] && json_load "$(cat "${CFG}")"


In openwrt/package/base-files/files/lib/functions/uci-defaults.sh line 624:
	json_dump -i -o ${CFG}
                        ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	json_dump -i -o "${CFG}"

For more information:
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] && [ q ] as [ p -a q...
  https://www.shellcheck.net/wiki/SC2187 -- Ash scripts will be checked as Da...
  https://www.shellcheck.net/wiki/SC1091 -- Not following: /lib/functions.sh ...
