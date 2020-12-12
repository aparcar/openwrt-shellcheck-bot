
In openwrt/package/network/config/xfrm/files/xfrm.sh line 71:
	[ -f /lib/modules/$(uname -r)/xfrm_interface.ko -o -d /sys/module/xfrm_interface ] && add_protocol xfrm
                          ^---------^ SC2046: Quote this to prevent word splitting.
                                                        ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] || [ q ] as [ p -o q...
