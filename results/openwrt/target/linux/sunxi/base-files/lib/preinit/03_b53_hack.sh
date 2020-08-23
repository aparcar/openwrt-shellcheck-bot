
In openwrt/target/linux/sunxi/base-files/lib/preinit/03_b53_hack.sh line 2:
	. /lib/functions.sh
          ^---------------^ SC1091: Not following: /lib/functions.sh was not specified as input (see shellcheck -x).

For more information:
  https://www.shellcheck.net/wiki/SC1091 -- Not following: /lib/functions.sh ...
