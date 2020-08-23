
In openwrt/target/linux/bcm27xx/base-files/etc/diag.sh line 5:
. /lib/functions.sh
  ^---------------^ SC1091: Not following: /lib/functions.sh was not specified as input (see shellcheck -x).


In openwrt/target/linux/bcm27xx/base-files/etc/diag.sh line 6:
. /lib/functions/leds.sh
  ^--------------------^ SC1091: Not following: /lib/functions/leds.sh was not specified as input (see shellcheck -x).


In openwrt/target/linux/bcm27xx/base-files/etc/diag.sh line 31:
	done)
        ^-- SC1010: Use semicolon or linefeed before 'done' (or quote to make it literal).

For more information:
  https://www.shellcheck.net/wiki/SC1010 -- Use semicolon or linefeed before ...
  https://www.shellcheck.net/wiki/SC1091 -- Not following: /lib/functions.sh ...
