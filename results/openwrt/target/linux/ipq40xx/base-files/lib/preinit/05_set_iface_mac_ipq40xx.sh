
In openwrt/target/linux/ipq40xx/base-files/lib/preinit/05_set_iface_mac_ipq40xx.sh line 7:
		ip link set dev eth0 address $(macaddr_add "$base_mac" 1)
                                             ^--------------------------^ SC2046: Quote this to prevent word splitting.


In openwrt/target/linux/ipq40xx/base-files/lib/preinit/05_set_iface_mac_ipq40xx.sh line 8:
		ip link set dev eth1 address $(macaddr_add "$base_mac" 3)
                                             ^--------------------------^ SC2046: Quote this to prevent word splitting.


In openwrt/target/linux/ipq40xx/base-files/lib/preinit/05_set_iface_mac_ipq40xx.sh line 12:
		ip link set dev eth1 address $(macaddr_add "$base_mac" 1)
                                             ^--------------------------^ SC2046: Quote this to prevent word splitting.


In openwrt/target/linux/ipq40xx/base-files/lib/preinit/05_set_iface_mac_ipq40xx.sh line 18:
		ip link set dev eth1 address $(macaddr_add "$base_mac" 1)
                                             ^--------------------------^ SC2046: Quote this to prevent word splitting.


In openwrt/target/linux/ipq40xx/base-files/lib/preinit/05_set_iface_mac_ipq40xx.sh line 26:
		ip link set dev eth0 address $(macaddr_add "$base_mac" 2)
                                             ^--------------------------^ SC2046: Quote this to prevent word splitting.


In openwrt/target/linux/ipq40xx/base-files/lib/preinit/05_set_iface_mac_ipq40xx.sh line 27:
		ip link set dev eth1 address $(macaddr_add "$base_mac" 3)
                                             ^--------------------------^ SC2046: Quote this to prevent word splitting.

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
