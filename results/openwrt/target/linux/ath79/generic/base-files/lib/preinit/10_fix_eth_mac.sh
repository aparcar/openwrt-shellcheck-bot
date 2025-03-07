
In openwrt/target/linux/ath79/generic/base-files/lib/preinit/10_fix_eth_mac.sh line 8:
		ip link set dev eth0 address $(fritz_tffs -n maca -i $(find_mtd_part "tffs (1)"))
                                             ^-- SC2046: Quote this to prevent word splitting.
                                                                     ^-------------------------^ SC2046: Quote this to prevent word splitting.


In openwrt/target/linux/ath79/generic/base-files/lib/preinit/10_fix_eth_mac.sh line 12:
		ip link set dev eth0 address $(mtd_get_mac_ascii bdcfg "lanmac")
                                             ^-- SC2046: Quote this to prevent word splitting.


In openwrt/target/linux/ath79/generic/base-files/lib/preinit/10_fix_eth_mac.sh line 13:
		ip link set dev eth1 address $(mtd_get_mac_ascii bdcfg "wanmac")
                                             ^-- SC2046: Quote this to prevent word splitting.


In openwrt/target/linux/ath79/generic/base-files/lib/preinit/10_fix_eth_mac.sh line 19:
		ip link set dev eth0 address $(mtd_get_mac_ascii u-boot-env ethaddr)
                                             ^-- SC2046: Quote this to prevent word splitting.


In openwrt/target/linux/ath79/generic/base-files/lib/preinit/10_fix_eth_mac.sh line 22:
		ip link set dev eth0 address $(mtd_get_mac_ascii u-boot-env0 ethaddr)
                                             ^-- SC2046: Quote this to prevent word splitting.


In openwrt/target/linux/ath79/generic/base-files/lib/preinit/10_fix_eth_mac.sh line 26:
		ip link set dev eth0 address $(mtd_get_mac_ascii cfg1 ethaddr)
                                             ^-- SC2046: Quote this to prevent word splitting.


In openwrt/target/linux/ath79/generic/base-files/lib/preinit/10_fix_eth_mac.sh line 29:
		ip link set dev eth0 address $(mtd_get_mac_ascii u-boot-env mac_addr)
                                             ^-- SC2046: Quote this to prevent word splitting.


In openwrt/target/linux/ath79/generic/base-files/lib/preinit/10_fix_eth_mac.sh line 32:
		base_mac=$(mtd_get_mac_encrypted_deco $(find_mtd_part config))
                                                      ^---------------------^ SC2046: Quote this to prevent word splitting.


In openwrt/target/linux/ath79/generic/base-files/lib/preinit/10_fix_eth_mac.sh line 33:
		ip link set dev eth0 address $base_mac
                                             ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		ip link set dev eth0 address "$base_mac"

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
