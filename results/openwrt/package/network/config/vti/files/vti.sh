
In openwrt/package/network/config/vti/files/vti.sh line 4:
	. /lib/functions.sh
          ^---------------^ SC1091: Not following: /lib/functions.sh was not specified as input (see shellcheck -x).


In openwrt/package/network/config/vti/files/vti.sh line 5:
	. /lib/functions/network.sh
          ^-----------------------^ SC1091: Not following: /lib/functions/network.sh was not specified as input (see shellcheck -x).


In openwrt/package/network/config/vti/files/vti.sh line 6:
	. ../netifd-proto.sh
          ^----------------^ SC1091: Not following: ../netifd-proto.sh was not specified as input (see shellcheck -x).


In openwrt/package/network/config/vti/files/vti.sh line 59:
		if [ -z $wanif ] && ! network_find_wan wanif; then
                        ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		if [ -z "$wanif" ] && ! network_find_wan wanif; then


In openwrt/package/network/config/vti/files/vti.sh line 70:
	vti_generic_setup $cfg $mode $ipaddr $peeraddr "vti-$cfg"
                          ^--^ SC2086: Double quote to prevent globbing and word splitting.
                               ^---^ SC2086: Double quote to prevent globbing and word splitting.
                                     ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                             ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	vti_generic_setup "$cfg" "$mode" "$ipaddr" "$peeraddr" "vti-$cfg"


In openwrt/package/network/config/vti/files/vti.sh line 76:
	vti_setup $cfg "vtiip"
                  ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	vti_setup "$cfg" "vtiip"


In openwrt/package/network/config/vti/files/vti.sh line 96:
		if [ -z $wanif ] && ! network_find_wan6 wanif; then
                        ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		if [ -z "$wanif" ] && ! network_find_wan6 wanif; then


In openwrt/package/network/config/vti/files/vti.sh line 110:
	vti_generic_setup $cfg $mode $ip6addr $peer6addr "vti6-$cfg"
                          ^--^ SC2086: Double quote to prevent globbing and word splitting.
                               ^---^ SC2086: Double quote to prevent globbing and word splitting.
                                     ^------^ SC2086: Double quote to prevent globbing and word splitting.
                                              ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	vti_generic_setup "$cfg" "$mode" "$ip6addr" "$peer6addr" "vti6-$cfg"


In openwrt/package/network/config/vti/files/vti.sh line 116:
	vti6_setup $cfg "vtiip6"
                   ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	vti6_setup "$cfg" "vtiip6"


In openwrt/package/network/config/vti/files/vti.sh line 152:
	[ -f /lib/modules/$(uname -r)/ip_vti.ko ] && add_protocol vti
                          ^---------^ SC2046: Quote this to prevent word splitting.


In openwrt/package/network/config/vti/files/vti.sh line 153:
	[ -f /lib/modules/$(uname -r)/ip6_vti.ko ] && add_protocol vti6
                          ^---------^ SC2046: Quote this to prevent word splitting.

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
  https://www.shellcheck.net/wiki/SC1091 -- Not following: ../netifd-proto.sh...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
