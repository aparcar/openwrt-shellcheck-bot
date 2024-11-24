
In openwrt/target/linux/mediatek/filogic/base-files/lib/preinit/10_fix_eth_mac.sh line 7:
		$(mmc_get_mac_ascii u-boot-env WANMAC)
                ^-- SC2091: Remove surrounding $() to avoid executing output.


In openwrt/target/linux/mediatek/filogic/base-files/lib/preinit/10_fix_eth_mac.sh line 8:
		$(mmc_get_mac_ascii u-boot-env LANMAC)
                ^-- SC2091: Remove surrounding $() to avoid executing output.


In openwrt/target/linux/mediatek/filogic/base-files/lib/preinit/10_fix_eth_mac.sh line 33:
		ip link set dev eth1 address "$(macaddr_add $addr 1)"
                                                            ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		ip link set dev eth1 address "$(macaddr_add "$addr" 1)"

For more information:
  https://www.shellcheck.net/wiki/SC2091 -- Remove surrounding $() to avoid e...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
