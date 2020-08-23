
In openwrt/target/linux/ar71xx/base-files/lib/preinit/01_preinit_do_ar71xx.sh line 4:
	. /lib/ar71xx.sh
          ^------------^ SC1091: Not following: /lib/ar71xx.sh was not specified as input (see shellcheck -x).

For more information:
  https://www.shellcheck.net/wiki/SC1091 -- Not following: /lib/ar71xx.sh was...
