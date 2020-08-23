
In openwrt/target/linux/rb532/base-files/etc/diag.sh line 4:
. /lib/functions/leds.sh
  ^--------------------^ SC1091: Not following: /lib/functions/leds.sh was not specified as input (see shellcheck -x).


In openwrt/target/linux/rb532/base-files/etc/diag.sh line 13:
	done)
        ^-- SC1010: Use semicolon or linefeed before 'done' (or quote to make it literal).

For more information:
  https://www.shellcheck.net/wiki/SC1010 -- Use semicolon or linefeed before ...
  https://www.shellcheck.net/wiki/SC1091 -- Not following: /lib/functions/led...
