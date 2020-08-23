
In openwrt/package/network/ipv6/map/files/map.sh line 58:
	echo "rule=$rule" > /tmp/map-$cfg.rules
                                     ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo "rule=$rule" > /tmp/map-"$cfg".rules


In openwrt/package/network/ipv6/map/files/map.sh line 59:
	RULE_DATA=$(LEGACY="$legacymap" mapcalc ${tunlink:-\*} $rule)
                                                ^------------^ SC2086: Double quote to prevent globbing and word splitting.
                                                               ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	RULE_DATA=$(LEGACY="$legacymap" mapcalc "${tunlink:-\*}" "$rule")


In openwrt/package/network/ipv6/map/files/map.sh line 60:
	if [ "$?" != 0 ]; then
             ^--^ SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.


In openwrt/package/network/ipv6/map/files/map.sh line 66:
	echo "$RULE_DATA" >> /tmp/map-$cfg.rules
                                      ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo "$RULE_DATA" >> /tmp/map-"$cfg".rules


In openwrt/package/network/ipv6/map/files/map.sh line 67:
	eval $RULE_DATA
             ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	eval "$RULE_DATA"


In openwrt/package/network/ipv6/map/files/map.sh line 76:
	if [ "$maptype" = "lw4o6" -o "$maptype" = "map-e" ]; then
                                  ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/ipv6/map/files/map.sh line 78:
		proto_add_ipv4_address $(eval "echo \$RULE_${k}_IPV4ADDR") "" "" ""
                                       ^-- SC2046: Quote this to prevent word splitting.


In openwrt/package/network/ipv6/map/files/map.sh line 84:
		json_add_string local $(eval "echo \$RULE_${k}_IPV6ADDR")
                                      ^-- SC2046: Quote this to prevent word splitting.


In openwrt/package/network/ipv6/map/files/map.sh line 85:
		json_add_string remote $(eval "echo \$RULE_${k}_BR")
                                       ^---------------------------^ SC2046: Quote this to prevent word splitting.


In openwrt/package/network/ipv6/map/files/map.sh line 86:
		json_add_string link $(eval "echo \$RULE_${k}_PD6IFACE")
                                     ^-- SC2046: Quote this to prevent word splitting.


In openwrt/package/network/ipv6/map/files/map.sh line 91:
				for i in $(seq $RULE_COUNT); do
                                               ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
				for i in $(seq "$RULE_COUNT"); do


In openwrt/package/network/ipv6/map/files/map.sh line 96:
					json_add_int ealen $(eval "echo \$RULE_${i}_EALEN")
                                                           ^-- SC2046: Quote this to prevent word splitting.


In openwrt/package/network/ipv6/map/files/map.sh line 97:
					json_add_int offset $(eval "echo \$RULE_${i}_OFFSET")
                                                            ^-- SC2046: Quote this to prevent word splitting.


In openwrt/package/network/ipv6/map/files/map.sh line 106:
	elif [ "$maptype" = "map-t" -a -f "/proc/net/nat46/control" ]; then
                                    ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/ipv6/map/files/map.sh line 111:
		echo add $link > /proc/net/nat46/control
                         ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		echo add "$link" > /proc/net/nat46/control


In openwrt/package/network/ipv6/map/files/map.sh line 116:
		echo config $link $cfgstr > /proc/net/nat46/control
                            ^---^ SC2086: Double quote to prevent globbing and word splitting.
                                  ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		echo config "$link" "$cfgstr" > /proc/net/nat46/control


In openwrt/package/network/ipv6/map/files/map.sh line 118:
		for i in $(seq $RULE_COUNT); do
                               ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		for i in $(seq "$RULE_COUNT"); do


In openwrt/package/network/ipv6/map/files/map.sh line 123:
			echo insert $link $cfgstr > /proc/net/nat46/control
                                    ^---^ SC2086: Double quote to prevent globbing and word splitting.
                                          ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			echo insert "$link" "$cfgstr" > /proc/net/nat46/control


In openwrt/package/network/ipv6/map/files/map.sh line 140:
	      json_add_string snat_ip $(eval "echo \$RULE_${k}_IPV4ADDR")
                                      ^-- SC2046: Quote this to prevent word splitting.


In openwrt/package/network/ipv6/map/files/map.sh line 151:
                  json_add_string snat_ip $(eval "echo \$RULE_${k}_IPV4ADDR")
                                          ^-- SC2046: Quote this to prevent word splitting.


In openwrt/package/network/ipv6/map/files/map.sh line 158:
		[ -z "$zone" ] && zone=$(fw3 -q network $iface 2>/dev/null)
                                                        ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		[ -z "$zone" ] && zone=$(fw3 -q network "$iface" 2>/dev/null)


In openwrt/package/network/ipv6/map/files/map.sh line 168:
				json_add_string src_ip $(eval "echo \$RULE_${k}_IPV6ADDR")
                                                       ^-- SC2046: Quote this to prevent word splitting.


In openwrt/package/network/ipv6/map/files/map.sh line 178:
				json_add_string dest_ip $(eval "echo \$RULE_${k}_IPV6ADDR")
                                                        ^-- SC2046: Quote this to prevent word splitting.


In openwrt/package/network/ipv6/map/files/map.sh line 182:
		proto_add_ipv6_route $(eval "echo \$RULE_${k}_IPV6ADDR") 128
                                     ^-- SC2046: Quote this to prevent word splitting.


In openwrt/package/network/ipv6/map/files/map.sh line 189:
	if [ "$maptype" = "lw4o6" -o "$maptype" = "map-e" ]; then
                                  ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/ipv6/map/files/map.sh line 213:
		"map-t") [ -f "/proc/net/nat46/control" ] && echo del $link > /proc/net/nat46/control ;;
                                                                      ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		"map-t") [ -f "/proc/net/nat46/control" ] && echo del "$link" > /proc/net/nat46/control ;;


In openwrt/package/network/ipv6/map/files/map.sh line 216:
	rm -f /tmp/map-$cfg.rules
                       ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	rm -f /tmp/map-"$cfg".rules

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] && [ q ] as [ p -a q...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
