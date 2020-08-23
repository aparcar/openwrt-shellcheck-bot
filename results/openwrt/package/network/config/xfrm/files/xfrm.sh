
In openwrt/package/network/config/xfrm/files/xfrm.sh line 4:
	. /lib/functions.sh
          ^---------------^ SC1091: Not following: /lib/functions.sh was not specified as input (see shellcheck -x).


In openwrt/package/network/config/xfrm/files/xfrm.sh line 5:
	. /lib/functions/network.sh
          ^-----------------------^ SC1091: Not following: /lib/functions/network.sh was not specified as input (see shellcheck -x).


In openwrt/package/network/config/xfrm/files/xfrm.sh line 6:
	. ../netifd-proto.sh
          ^----------------^ SC1091: Not following: ../netifd-proto.sh was not specified as input (see shellcheck -x).


In openwrt/package/network/config/xfrm/files/xfrm.sh line 68:
	[ -f /lib/modules/$(uname -r)/xfrm_interface.ko -o -d /sys/module/xfrm_interface ] && add_protocol xfrm
                          ^---------^ SC2046: Quote this to prevent word splitting.
                                                        ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] || [ q ] as [ p -o q...
  https://www.shellcheck.net/wiki/SC1091 -- Not following: ../netifd-proto.sh...
