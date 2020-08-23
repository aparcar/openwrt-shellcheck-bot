
In openwrt/package/network/ipv6/464xlat/files/464xlat.sh line 40:
	ip6addr=$(464xlatcfg "$link" "$tundev" "$ip6prefix" 192.0.0.1 $ip6addr)
                                                                      ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	ip6addr=$(464xlatcfg "$link" "$tundev" "$ip6prefix" 192.0.0.1 "$ip6addr")


In openwrt/package/network/ipv6/464xlat/files/464xlat.sh line 48:
	ip -6 rule add to $ip6addr lookup prelocal pref 0
                          ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	ip -6 rule add to "$ip6addr" lookup prelocal pref 0


In openwrt/package/network/ipv6/464xlat/files/464xlat.sh line 49:
	echo "$ip6addr" > /tmp/464-$cfg-anycast
                                   ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo "$ip6addr" > /tmp/464-"$cfg"-anycast


In openwrt/package/network/ipv6/464xlat/files/464xlat.sh line 53:
	proto_add_ipv6_route $ip6addr 128 "" "" "" "" 128
                             ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	proto_add_ipv6_route "$ip6addr" 128 "" "" "" "" 128


In openwrt/package/network/ipv6/464xlat/files/464xlat.sh line 59:
		[ -z "$zone" ] && zone=$(fw3 -q network $iface 2>/dev/null)
                                                        ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		[ -z "$zone" ] && zone=$(fw3 -q network "$iface" 2>/dev/null)


In openwrt/package/network/ipv6/464xlat/files/464xlat.sh line 75:
				json_add_string src_ip $ip6addr
                                                       ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
				json_add_string src_ip "$ip6addr"


In openwrt/package/network/ipv6/464xlat/files/464xlat.sh line 89:
	[ -f /tmp/464-$cfg-anycast ] || return
                      ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ -f /tmp/464-"$cfg"-anycast ] || return


In openwrt/package/network/ipv6/464xlat/files/464xlat.sh line 90:
	local ip6addr=$(cat /tmp/464-$cfg-anycast)
                                     ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local ip6addr=$(cat /tmp/464-"$cfg"-anycast)


In openwrt/package/network/ipv6/464xlat/files/464xlat.sh line 94:
	rm -rf /tmp/464-$cfg-anycast
                        ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	rm -rf /tmp/464-"$cfg"-anycast


In openwrt/package/network/ipv6/464xlat/files/464xlat.sh line 95:
	[ -n "$ip6addr" ] && ip -6 rule del to $ip6addr lookup prelocal
                                               ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ -n "$ip6addr" ] && ip -6 rule del to "$ip6addr" lookup prelocal

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
