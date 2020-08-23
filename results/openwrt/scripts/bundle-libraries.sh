
In openwrt/scripts/bundle-libraries.sh line 133:
[ -n "$LDD" -a -x "$LDD" ] || LDD=
            ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/scripts/bundle-libraries.sh line 136:
	[ -n "$BIN" -a -n "$DIR" ] || {
                    ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/scripts/bundle-libraries.sh line 163:
				[ -f "$token" -a ! -f "$dest" ] && {
                                              ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.

For more information:
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] && [ q ] as [ p -a q...
