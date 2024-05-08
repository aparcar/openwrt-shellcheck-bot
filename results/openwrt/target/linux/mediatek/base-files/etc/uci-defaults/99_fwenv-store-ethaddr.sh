
In openwrt/target/linux/mediatek/base-files/etc/uci-defaults/99_fwenv-store-ethaddr.sh line 19:
		fw_setenv eth1addr "$(macaddr_add $(cat /sys/class/net/eth0/address) 1)"
                                                  ^-- SC2046: Quote this to prevent word splitting.

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
