
In openwrt/target/linux/x86/base-files/etc/diag.sh line 6:
. /lib/functions.sh
  ^---------------^ SC1091: Not following: /lib/functions.sh was not specified as input (see shellcheck -x).


In openwrt/target/linux/x86/base-files/etc/diag.sh line 7:
. /lib/functions/leds.sh
  ^--------------------^ SC1091: Not following: /lib/functions/leds.sh was not specified as input (see shellcheck -x).


In openwrt/target/linux/x86/base-files/etc/diag.sh line 8:
. /usr/share/libubox/jshn.sh
  ^------------------------^ SC1091: Not following: /usr/share/libubox/jshn.sh was not specified as input (see shellcheck -x).


In openwrt/target/linux/x86/base-files/etc/diag.sh line 30:
		if [ "$name" = "DIAG" -a "$default" = "1" ]; then
                                      ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/target/linux/x86/base-files/etc/diag.sh line 46:
	if [ "$name" = "DIAG" -a "$default" = "1" ]; then
                              ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/target/linux/x86/base-files/etc/diag.sh line 76:
	done)
        ^-- SC1010: Use semicolon or linefeed before 'done' (or quote to make it literal).

For more information:
  https://www.shellcheck.net/wiki/SC1010 -- Use semicolon or linefeed before ...
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] && [ q ] as [ p -a q...
  https://www.shellcheck.net/wiki/SC1091 -- Not following: /lib/functions.sh ...
