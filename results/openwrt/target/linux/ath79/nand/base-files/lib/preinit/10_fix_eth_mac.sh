
In openwrt/target/linux/ath79/nand/base-files/lib/preinit/10_fix_eth_mac.sh line 1:
. /lib/functions.sh
  ^---------------^ SC1091: Not following: /lib/functions.sh was not specified as input (see shellcheck -x).


In openwrt/target/linux/ath79/nand/base-files/lib/preinit/10_fix_eth_mac.sh line 2:
. /lib/functions/system.sh
  ^----------------------^ SC1091: Not following: /lib/functions/system.sh was not specified as input (see shellcheck -x).


In openwrt/target/linux/ath79/nand/base-files/lib/preinit/10_fix_eth_mac.sh line 8:
		ip link set dev eth0 address $(macaddr_add $ethaddr 2)
                                             ^-----------------------^ SC2046: Quote this to prevent word splitting.
                                                           ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		ip link set dev eth0 address $(macaddr_add "$ethaddr" 2)


In openwrt/target/linux/ath79/nand/base-files/lib/preinit/10_fix_eth_mac.sh line 9:
		ip link set dev eth1 address $(macaddr_add $ethaddr 3)
                                             ^-----------------------^ SC2046: Quote this to prevent word splitting.
                                                           ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		ip link set dev eth1 address $(macaddr_add "$ethaddr" 3)

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
  https://www.shellcheck.net/wiki/SC1091 -- Not following: /lib/functions.sh ...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
