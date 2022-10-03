
In openwrt/target/linux/ipq40xx/base-files/lib/preinit/05_set_iface_mac_ipq40xx.sh line 7:
		ip link set dev eth0 address $(macaddr_add "$base_mac" 1)
                                             ^--------------------------^ SC2046: Quote this to prevent word splitting.


In openwrt/target/linux/ipq40xx/base-files/lib/preinit/05_set_iface_mac_ipq40xx.sh line 8:
		ip link set dev eth1 address $(macaddr_add "$base_mac" 3)
                                             ^--------------------------^ SC2046: Quote this to prevent word splitting.


In openwrt/target/linux/ipq40xx/base-files/lib/preinit/05_set_iface_mac_ipq40xx.sh line 11:
		ip link set dev eth0 address $(mtd_get_mac_binary_ubi Factory 0x1006)
                                             ^-- SC2046: Quote this to prevent word splitting.


In openwrt/target/linux/ipq40xx/base-files/lib/preinit/05_set_iface_mac_ipq40xx.sh line 12:
		ip link set dev eth1 address $(mtd_get_mac_binary_ubi Factory 0x9006)
                                             ^-- SC2046: Quote this to prevent word splitting.


In openwrt/target/linux/ipq40xx/base-files/lib/preinit/05_set_iface_mac_ipq40xx.sh line 16:
		ip link set dev eth1 address $(macaddr_add "$base_mac" 1)
                                             ^--------------------------^ SC2046: Quote this to prevent word splitting.


In openwrt/target/linux/ipq40xx/base-files/lib/preinit/05_set_iface_mac_ipq40xx.sh line 19:
		ip link set dev eth0 address $(mtd_get_mac_ascii CFG1 ethaddr)
                                             ^-- SC2046: Quote this to prevent word splitting.


In openwrt/target/linux/ipq40xx/base-files/lib/preinit/05_set_iface_mac_ipq40xx.sh line 24:
		ip link set dev lan1 address $(macaddr_add "$base_mac" 1)
                                             ^--------------------------^ SC2046: Quote this to prevent word splitting.


In openwrt/target/linux/ipq40xx/base-files/lib/preinit/05_set_iface_mac_ipq40xx.sh line 25:
		ip link set dev eth0 address $(macaddr_setbit "$base_mac" 7)
                                             ^-----------------------------^ SC2046: Quote this to prevent word splitting.


In openwrt/target/linux/ipq40xx/base-files/lib/preinit/05_set_iface_mac_ipq40xx.sh line 30:
		ip link set dev eth1 address $(macaddr_add "$base_mac" 1)
                                             ^--------------------------^ SC2046: Quote this to prevent word splitting.


In openwrt/target/linux/ipq40xx/base-files/lib/preinit/05_set_iface_mac_ipq40xx.sh line 34:
		ip link set dev eth0 address $(macaddr_add "$base_mac" 2)
                                             ^--------------------------^ SC2046: Quote this to prevent word splitting.


In openwrt/target/linux/ipq40xx/base-files/lib/preinit/05_set_iface_mac_ipq40xx.sh line 35:
		ip link set dev eth1 address $(macaddr_add "$base_mac" 3)
                                             ^--------------------------^ SC2046: Quote this to prevent word splitting.

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
