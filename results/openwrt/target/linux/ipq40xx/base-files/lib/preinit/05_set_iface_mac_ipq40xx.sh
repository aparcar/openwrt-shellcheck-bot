
In openwrt/target/linux/ipq40xx/base-files/lib/preinit/05_set_iface_mac_ipq40xx.sh line 1:
. /lib/functions.sh
  ^---------------^ SC1091: Not following: /lib/functions.sh was not specified as input (see shellcheck -x).


In openwrt/target/linux/ipq40xx/base-files/lib/preinit/05_set_iface_mac_ipq40xx.sh line 7:
		ip link set dev eth0 address $(macaddr_add "$base_mac" +1)
                                             ^---------------------------^ SC2046: Quote this to prevent word splitting.


In openwrt/target/linux/ipq40xx/base-files/lib/preinit/05_set_iface_mac_ipq40xx.sh line 8:
		ip link set dev eth1 address $(macaddr_add "$base_mac" +3)
                                             ^---------------------------^ SC2046: Quote this to prevent word splitting.


In openwrt/target/linux/ipq40xx/base-files/lib/preinit/05_set_iface_mac_ipq40xx.sh line 11:
		ip link set dev eth0 address $(mtd_get_mac_binary "ART" 0x6)
                                             ^-----------------------------^ SC2046: Quote this to prevent word splitting.


In openwrt/target/linux/ipq40xx/base-files/lib/preinit/05_set_iface_mac_ipq40xx.sh line 12:
		ip link set dev eth1 address $(mtd_get_mac_binary "ART" 0x0)
                                             ^-----------------------------^ SC2046: Quote this to prevent word splitting.


In openwrt/target/linux/ipq40xx/base-files/lib/preinit/05_set_iface_mac_ipq40xx.sh line 16:
		ip link set dev eth1 address $(macaddr_add "${base_mac}" +1)
                                             ^-----------------------------^ SC2046: Quote this to prevent word splitting.


In openwrt/target/linux/ipq40xx/base-files/lib/preinit/05_set_iface_mac_ipq40xx.sh line 21:
		ip link set dev eth1 address $(macaddr_add "${base_mac}" 1)
                                             ^----------------------------^ SC2046: Quote this to prevent word splitting.


In openwrt/target/linux/ipq40xx/base-files/lib/preinit/05_set_iface_mac_ipq40xx.sh line 29:
		ip link set dev eth0 address $(macaddr_add "$base_mac" +2)
                                             ^---------------------------^ SC2046: Quote this to prevent word splitting.


In openwrt/target/linux/ipq40xx/base-files/lib/preinit/05_set_iface_mac_ipq40xx.sh line 30:
		ip link set dev eth1 address $(macaddr_add "$base_mac" +3)
                                             ^---------------------------^ SC2046: Quote this to prevent word splitting.

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
  https://www.shellcheck.net/wiki/SC1091 -- Not following: /lib/functions.sh ...
