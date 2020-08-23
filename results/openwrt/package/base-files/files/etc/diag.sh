
In openwrt/package/base-files/files/etc/diag.sh line 38:
	done)
        ^-- SC1010: Use semicolon or linefeed before 'done' (or quote to make it literal).


In openwrt/package/base-files/files/etc/diag.sh line 51:
	[ -n "$boot" -o -n "$failsafe" -o -n "$running" -o -n "$upgrade" ] && set_led_state "$1"
                     ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.
                                       ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.
                                                        ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.

For more information:
  https://www.shellcheck.net/wiki/SC1010 -- Use semicolon or linefeed before ...
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] || [ q ] as [ p -o q...
