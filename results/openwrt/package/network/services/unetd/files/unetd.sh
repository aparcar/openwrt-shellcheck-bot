
In openwrt/package/network/services/unetd/files/unetd.sh line 54:
		[ -n "$ifname" -a -n "$service" -a "$ifname" != "$t" ] || continue
                               ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.
                                                ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.

For more information:
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] && [ q ] as [ p -a q...
