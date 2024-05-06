
In openwrt/target/linux/ipq40xx/base-files/lib/preinit/05_set_iface_mac_ipq40xx.sh line 7:
		ip link set dev eth0 address $(macaddr_add "$base_mac" 1)
                                             ^--------------------------^ SC2046: Quote this to prevent word splitting.


In openwrt/target/linux/ipq40xx/base-files/lib/preinit/05_set_iface_mac_ipq40xx.sh line 8:
		ip link set dev eth1 address $(macaddr_add "$base_mac" 3)
                                             ^--------------------------^ SC2046: Quote this to prevent word splitting.


In openwrt/target/linux/ipq40xx/base-files/lib/preinit/05_set_iface_mac_ipq40xx.sh line 12:
		ip link set dev eth0 address $base_mac
                                             ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		ip link set dev eth0 address "$base_mac"


In openwrt/target/linux/ipq40xx/base-files/lib/preinit/05_set_iface_mac_ipq40xx.sh line 13:
		ip link set dev lan1 address $base_mac
                                             ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		ip link set dev lan1 address "$base_mac"


In openwrt/target/linux/ipq40xx/base-files/lib/preinit/05_set_iface_mac_ipq40xx.sh line 14:
		ip link set dev lan2 address $base_mac
                                             ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		ip link set dev lan2 address "$base_mac"


In openwrt/target/linux/ipq40xx/base-files/lib/preinit/05_set_iface_mac_ipq40xx.sh line 15:
		ip link set dev lan3 address $base_mac
                                             ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		ip link set dev lan3 address "$base_mac"


In openwrt/target/linux/ipq40xx/base-files/lib/preinit/05_set_iface_mac_ipq40xx.sh line 16:
		ip link set dev lan4 address $base_mac
                                             ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		ip link set dev lan4 address "$base_mac"


In openwrt/target/linux/ipq40xx/base-files/lib/preinit/05_set_iface_mac_ipq40xx.sh line 17:
		ip link set dev wan address $(mtd_get_mac_binary_ubi Factory 0x9006)
                                            ^-- SC2046: Quote this to prevent word splitting.


In openwrt/target/linux/ipq40xx/base-files/lib/preinit/05_set_iface_mac_ipq40xx.sh line 21:
		ip link set dev eth1 address $(macaddr_add "$base_mac" 1)
                                             ^--------------------------^ SC2046: Quote this to prevent word splitting.


In openwrt/target/linux/ipq40xx/base-files/lib/preinit/05_set_iface_mac_ipq40xx.sh line 25:
		ip link set dev eth0 address $(mtd_get_mac_ascii CFG1 ethaddr)
                                             ^-- SC2046: Quote this to prevent word splitting.


In openwrt/target/linux/ipq40xx/base-files/lib/preinit/05_set_iface_mac_ipq40xx.sh line 30:
		ip link set dev lan1 address $(macaddr_add "$base_mac" 1)
                                             ^--------------------------^ SC2046: Quote this to prevent word splitting.


In openwrt/target/linux/ipq40xx/base-files/lib/preinit/05_set_iface_mac_ipq40xx.sh line 31:
		ip link set dev eth0 address $(macaddr_setbit "$base_mac" 7)
                                             ^-----------------------------^ SC2046: Quote this to prevent word splitting.


In openwrt/target/linux/ipq40xx/base-files/lib/preinit/05_set_iface_mac_ipq40xx.sh line 44:
		ip link set dev sw-eth2 address $(macaddr_add "$base_mac" 1)
                                                ^--------------------------^ SC2046: Quote this to prevent word splitting.


In openwrt/target/linux/ipq40xx/base-files/lib/preinit/05_set_iface_mac_ipq40xx.sh line 48:
		ip link set dev eth0 address $(macaddr_add "$base_mac" 2)
                                             ^--------------------------^ SC2046: Quote this to prevent word splitting.


In openwrt/target/linux/ipq40xx/base-files/lib/preinit/05_set_iface_mac_ipq40xx.sh line 49:
		ip link set dev eth1 address $(macaddr_add "$base_mac" 3)
                                             ^--------------------------^ SC2046: Quote this to prevent word splitting.

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
