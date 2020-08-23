
In openwrt/target/linux/ipq40xx/base-files/lib/preinit/06_set_preinit_iface_ipq40xx.sh line 2:
	. /lib/functions.sh
          ^---------------^ SC1091: Not following: /lib/functions.sh was not specified as input (see shellcheck -x).

For more information:
  https://www.shellcheck.net/wiki/SC1091 -- Not following: /lib/functions.sh ...
