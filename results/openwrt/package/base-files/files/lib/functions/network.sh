
In openwrt/package/base-files/files/lib/functions/network.sh line 18:
	__tmp="$(jsonfilter ${4:+-F "$4"} ${5:+-l "$5"} -s "${__NETWORK_CACHE:-{}}" -e "$1=@.interface${2:+[@.interface='$2']}$3")"
                                                                                                                        ^--^ SC2016: Expressions don't expand in single quotes, use double quotes for that.


In openwrt/package/base-files/files/lib/functions/network.sh line 137:
	if [ -n "$__addr" -o -n "$__addr6" ]; then
                          ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/base-files/files/lib/functions/network.sh line 198:
	[ "$3" = 1 -o "$3" = "true" ] && \
                   ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/base-files/files/lib/functions/network.sh line 210:
	[ "$3" = 1 -o "$3" = "true" ] && \
                   ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/base-files/files/lib/functions/network.sh line 221:
	[ "$3" = 1 -o "$3" = "true" ] && \
                   ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/base-files/files/lib/functions/network.sh line 232:
	[ "$3" = 1 -o "$3" = "true" ] && \
                   ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/base-files/files/lib/functions/network.sh line 246:
	[ "$3" = 1 -o "$3" = "true" ] && \
                   ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.

For more information:
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] || [ q ] as [ p -o q...
  https://www.shellcheck.net/wiki/SC2016 -- Expressions don't expand in singl...
