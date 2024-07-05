
In openwrt/target/linux/mediatek/filogic/base-files/lib/preinit/10_fix_eth_mac.sh line 23:
		ip link set dev eth1 address "$(macaddr_add $addr 1)"
                                                            ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		ip link set dev eth1 address "$(macaddr_add "$addr" 1)"


In openwrt/target/linux/mediatek/filogic/base-files/lib/preinit/10_fix_eth_mac.sh line 30:
		lan_addr=$(macaddr_add $addr 1)
                                       ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		lan_addr=$(macaddr_add "$addr" 1)


In openwrt/target/linux/mediatek/filogic/base-files/lib/preinit/10_fix_eth_mac.sh line 42:
		ip link set dev lan address "$(macaddr_add $addr 1)"
                                                           ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		ip link set dev lan address "$(macaddr_add "$addr" 1)"

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
