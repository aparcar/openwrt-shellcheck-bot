
In openwrt/package/network/config/gre/files/gre.sh line 86:
		if [ -z $wanif ] && ! network_find_wan wanif; then
                        ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		if [ -z "$wanif" ] && ! network_find_wan wanif; then


In openwrt/package/network/config/gre/files/gre.sh line 101:
			gre_generic_setup $cfg $mode $ipaddr $peeraddr "gre4t-$cfg"
                                          ^--^ SC2086: Double quote to prevent globbing and word splitting.
                                               ^---^ SC2086: Double quote to prevent globbing and word splitting.
                                                     ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                                             ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			gre_generic_setup "$cfg" "$mode" "$ipaddr" "$peeraddr" "gre4t-$cfg"


In openwrt/package/network/config/gre/files/gre.sh line 104:
			gre_generic_setup $cfg $mode $ipaddr $peeraddr "gre4-$cfg"
                                          ^--^ SC2086: Double quote to prevent globbing and word splitting.
                                               ^---^ SC2086: Double quote to prevent globbing and word splitting.
                                                     ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                                             ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			gre_generic_setup "$cfg" "$mode" "$ipaddr" "$peeraddr" "gre4-$cfg"


In openwrt/package/network/config/gre/files/gre.sh line 112:
	gre_setup $cfg "greip"
                  ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	gre_setup "$cfg" "greip"


In openwrt/package/network/config/gre/files/gre.sh line 121:
	gre_setup $cfg "gretapip"
                  ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	gre_setup "$cfg" "gretapip"


In openwrt/package/network/config/gre/files/gre.sh line 165:
		if [ -z $wanif ] && ! network_find_wan6 wanif; then
                        ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		if [ -z "$wanif" ] && ! network_find_wan6 wanif; then


In openwrt/package/network/config/gre/files/gre.sh line 181:
			gre_generic_setup $cfg $mode $ip6addr $peer6addr "gre6t-$cfg"
                                          ^--^ SC2086: Double quote to prevent globbing and word splitting.
                                               ^---^ SC2086: Double quote to prevent globbing and word splitting.
                                                     ^------^ SC2086: Double quote to prevent globbing and word splitting.
                                                              ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			gre_generic_setup "$cfg" "$mode" "$ip6addr" "$peer6addr" "gre6t-$cfg"


In openwrt/package/network/config/gre/files/gre.sh line 184:
			gre_generic_setup $cfg $mode $ip6addr $peer6addr "gre6-$cfg"
                                          ^--^ SC2086: Double quote to prevent globbing and word splitting.
                                               ^---^ SC2086: Double quote to prevent globbing and word splitting.
                                                     ^------^ SC2086: Double quote to prevent globbing and word splitting.
                                                              ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			gre_generic_setup "$cfg" "$mode" "$ip6addr" "$peer6addr" "gre6-$cfg"


In openwrt/package/network/config/gre/files/gre.sh line 192:
	grev6_setup $cfg "greip6"
                    ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	grev6_setup "$cfg" "greip6"


In openwrt/package/network/config/gre/files/gre.sh line 201:
	grev6_setup $cfg "gretapip6"
                    ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	grev6_setup "$cfg" "gretapip6"


In openwrt/package/network/config/gre/files/gre.sh line 294:
	[ -f /lib/modules/$(uname -r)/gre.ko ] && add_protocol gre
                          ^---------^ SC2046: Quote this to prevent word splitting.


In openwrt/package/network/config/gre/files/gre.sh line 295:
	[ -f /lib/modules/$(uname -r)/gre.ko ] && add_protocol gretap
                          ^---------^ SC2046: Quote this to prevent word splitting.


In openwrt/package/network/config/gre/files/gre.sh line 296:
	[ -f /lib/modules/$(uname -r)/ip6_gre.ko ] && add_protocol grev6
                          ^---------^ SC2046: Quote this to prevent word splitting.


In openwrt/package/network/config/gre/files/gre.sh line 297:
	[ -f /lib/modules/$(uname -r)/ip6_gre.ko ] && add_protocol grev6tap
                          ^---------^ SC2046: Quote this to prevent word splitting.

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
