
In openwrt/package/network/config/netifd/files/lib/netifd/proto/dhcp.sh line 56:
	[ "$iface6rd" != 0 -a -f /lib/netifd/proto/6rd.sh ] && append dhcpopts "-O 212"
                           ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/config/netifd/files/lib/netifd/proto/dhcp.sh line 67:
		-p /var/run/udhcpc-$iface.pid \
                                   ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		-p /var/run/udhcpc-"$iface".pid \


In openwrt/package/network/config/netifd/files/lib/netifd/proto/dhcp.sh line 73:
		$clientid $defaultreqopts $broadcast $norelease $dhcpopts
                                                                ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		$clientid $defaultreqopts $broadcast $norelease "$dhcpopts"


In openwrt/package/network/config/netifd/files/lib/netifd/proto/dhcp.sh line 80:
	[ -n "$sigusr1" ] && proto_kill_command "$interface" $sigusr1
                                                             ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ -n "$sigusr1" ] && proto_kill_command "$interface" "$sigusr1"

For more information:
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] && [ q ] as [ p -a q...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
