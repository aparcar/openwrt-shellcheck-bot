
In openwrt/target/linux/mpc85xx/base-files/lib/preinit/10_fix_eth_mac.sh line 6:
		ip link set dev eth0 address $(mtd_get_mac_ascii cfg1 ethaddr)
                                             ^-- SC2046: Quote this to prevent word splitting.


In openwrt/target/linux/mpc85xx/base-files/lib/preinit/10_fix_eth_mac.sh line 7:
		ip link set dev eth1 address $(mtd_get_mac_ascii cfg1 eth1addr)
                                             ^-- SC2046: Quote this to prevent word splitting.

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
