
In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 33:
        local mbimconfig="$@"
                         ^--^ SC2124: Assigning an array to a string! Assign as array, or use * instead of @ to concatenate.


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 48:
	local dhcp dhcpv6 pdptype ip4table ip6table mtu $PROTO_DEFAULT_OPTIONS
                                                        ^--------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local dhcp dhcpv6 pdptype ip4table ip6table mtu "$PROTO_DEFAULT_OPTIONS"


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 50:
	json_get_vars dhcp dhcpv6 pdptype ip4table ip6table mtu $PROTO_DEFAULT_OPTIONS
                                                                ^--------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	json_get_vars dhcp dhcpv6 pdptype ip4table ip6table mtu "$PROTO_DEFAULT_OPTIONS"


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 52:
	[ ! -e /proc/sys/net/ipv6 ] && ipv6=0 || json_get_var ipv6 ipv6
                                    ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 70:
	devpath="$(readlink -f /sys/class/usbmisc/$devname/device/)"
                                                  ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	devpath="$(readlink -f /sys/class/usbmisc/"$devname"/device/)"


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 89:
	umbim $DBG -n -d $device caps || {
              ^--^ SC2086: Double quote to prevent globbing and word splitting.
                         ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	umbim "$DBG" -n -d "$device" caps || {


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 92:
		umbim $DBG -t $tid -d "$device" disconnect
                      ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		umbim "$DBG" -t $tid -d "$device" disconnect


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 100:
		umbim $DBG -n -t $tid -d $device unlock "$pincode" || {
                      ^--^ SC2086: Double quote to prevent globbing and word splitting.
                                         ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		umbim "$DBG" -n -t $tid -d "$device" unlock "$pincode" || {


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 103:
			umbim $DBG -t $tid -d "$device" disconnect
                              ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			umbim "$DBG" -t $tid -d "$device" disconnect


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 112:
	umbim $DBG -n -t $tid -d $device pinstate
              ^--^ SC2086: Double quote to prevent globbing and word splitting.
                                 ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	umbim "$DBG" -n -t $tid -d "$device" pinstate


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 116:
		umbim $DBG -t $tid -d "$device" disconnect
                      ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		umbim "$DBG" -t $tid -d "$device" disconnect


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 124:
	umbim $DBG -n -t $tid -d $device subscriber || {
              ^--^ SC2086: Double quote to prevent globbing and word splitting.
                                 ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	umbim "$DBG" -n -t $tid -d "$device" subscriber || {


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 127:
		umbim $DBG -t $tid -d "$device" disconnect
                      ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		umbim "$DBG" -t $tid -d "$device" disconnect


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 135:
	umbim $DBG -n -t $tid -d $device registration
              ^--^ SC2086: Double quote to prevent globbing and word splitting.
                                 ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	umbim "$DBG" -n -t $tid -d "$device" registration


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 155:
		umbim $DBG -t $tid -d "$device" disconnect
                      ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		umbim "$DBG" -t $tid -d "$device" disconnect


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 161:
	umbim $DBG -n -t $tid -d $device attach || {
              ^--^ SC2086: Double quote to prevent globbing and word splitting.
                                 ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	umbim "$DBG" -n -t $tid -d "$device" attach || {


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 164:
		umbim $DBG -t $tid -d "$device" disconnect
                      ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		umbim "$DBG" -t $tid -d "$device" disconnect


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 174:
	[ "$pdptype" = "ipv4" -o "$pdptype" = "ipv6" -o "$pdptype" = "ipv4v6" ] && req_pdptype="$pdptype:"
                              ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.
                                                     ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 178:
	connect_state=$(umbim $DBG -n -t $tid -d $device connect "$req_pdptype$apn" "$auth" "$username" "$password") || {
                              ^--^ SC2086: Double quote to prevent globbing and word splitting.
                                                 ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	connect_state=$(umbim "$DBG" -n -t $tid -d "$device" connect "$req_pdptype$apn" "$auth" "$username" "$password") || {


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 181:
		umbim $DBG -t $tid -d "$device" disconnect
                      ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		umbim "$DBG" -t $tid -d "$device" disconnect


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 195:
	local mbimconfig="$(umbim $DBG -n -t $tid -d $device config)"
                                  ^--^ SC2086: Double quote to prevent globbing and word splitting.
                                                     ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local mbimconfig="$(umbim "$DBG" -n -t $tid -d "$device" config)"


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 219:
			json_add_string gateway $(_proto_mbim_get_field ipv4gateway "$mbimconfig")
                                                ^-- SC2046: Quote this to prevent word splitting.


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 260:
			json_add_string ip6gw $(_proto_mbim_get_field ipv6gateway "$mbimconfig")
                                              ^-- SC2046: Quote this to prevent word splitting.


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 291:
	[ -n "$mtu" -a "$mtu" != 0 ] && {
                    ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 292:
		echo Setting MTU of $ifname to $mtu
                                    ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		echo Setting MTU of "$ifname" to $mtu


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 293:
		/sbin/ip link set dev $ifname mtu $mtu
                                      ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		/sbin/ip link set dev "$ifname" mtu $mtu


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 296:
	uci_set_state network $interface tid "$tid"
                              ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	uci_set_state network "$interface" tid "$tid"


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 302:
	_proto_mbim_setup $@
                          ^-- SC2068: Double quote array expansions to avoid re-splitting elements.


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 318:
	local tid=$(uci_get_state network $interface tid)
                                          ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local tid=$(uci_get_state network "$interface" tid)


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 324:
		umbim $DBG -t $tid -d "$device" disconnect
                      ^--^ SC2086: Double quote to prevent globbing and word splitting.
                              ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		umbim "$DBG" -t "$tid" -d "$device" disconnect


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 325:
		uci_revert_state network $interface tid
                                         ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		uci_revert_state network "$interface" tid

For more information:
  https://www.shellcheck.net/wiki/SC2068 -- Double quote array expansions to ...
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
  https://www.shellcheck.net/wiki/SC2124 -- Assigning an array to a string! A...
