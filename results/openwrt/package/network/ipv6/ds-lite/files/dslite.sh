
In openwrt/package/network/ipv6/ds-lite/files/dslite.sh line 6:
	. /lib/functions.sh
          ^---------------^ SC1091: Not following: /lib/functions.sh was not specified as input (see shellcheck -x).


In openwrt/package/network/ipv6/ds-lite/files/dslite.sh line 7:
	. /lib/functions/network.sh
          ^-----------------------^ SC1091: Not following: /lib/functions/network.sh was not specified as input (see shellcheck -x).


In openwrt/package/network/ipv6/ds-lite/files/dslite.sh line 8:
	. ../netifd-proto.sh
          ^----------------^ SC1091: Not following: ../netifd-proto.sh was not specified as input (see shellcheck -x).

For more information:
  https://www.shellcheck.net/wiki/SC1091 -- Not following: ../netifd-proto.sh...
