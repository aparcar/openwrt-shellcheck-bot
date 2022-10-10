
In openwrt/package/network/ipv6/odhcp6c/files/dhcpv6.sh line 64:
	[ -z "$reqprefix" -o "$reqprefix" = "auto" ] && reqprefix=0
                          ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/ipv6/odhcp6c/files/dhcpv6.sh line 122:
		$opts $iface
                      ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		$opts "$iface"


In openwrt/package/network/ipv6/odhcp6c/files/dhcpv6.sh line 129:
	[ -n "$sigusr1" ] && proto_kill_command "$interface" $sigusr1
                                                             ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ -n "$sigusr1" ] && proto_kill_command "$interface" "$sigusr1"

For more information:
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] || [ q ] as [ p -o q...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
