
In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 35:
        local mbimconfig="$@"
                         ^--^ SC2124: Assigning an array to a string! Assign as array, or use * instead of @ to concatenate.


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 50:
	local dhcp dhcpv6 pdptype ip4table ip6table mtu $PROTO_DEFAULT_OPTIONS
                                                        ^--------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local dhcp dhcpv6 pdptype ip4table ip6table mtu "$PROTO_DEFAULT_OPTIONS"


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 52:
	json_get_vars dhcp dhcpv6 sourcefilter delegate pdptype ip4table ip6table mtu $PROTO_DEFAULT_OPTIONS
                                                                                      ^--------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	json_get_vars dhcp dhcpv6 sourcefilter delegate pdptype ip4table ip6table mtu "$PROTO_DEFAULT_OPTIONS"


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 54:
	[ ! -e /proc/sys/net/ipv6 ] && ipv6=0 || json_get_var ipv6 ipv6
                                    ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 72:
	devpath="$(readlink -f /sys/class/usbmisc/$devname/device/)"
                                                  ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	devpath="$(readlink -f /sys/class/usbmisc/"$devname"/device/)"


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 91:
	umbim $DBG -n -d $device caps || {
              ^--^ SC2086: Double quote to prevent globbing and word splitting.
                         ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	umbim "$DBG" -n -d "$device" caps || {


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 94:
		umbim $DBG -t $tid -d "$device" disconnect
                      ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		umbim "$DBG" -t $tid -d "$device" disconnect


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 102:
		umbim $DBG -n -t $tid -d $device unlock "$pincode" || {
                      ^--^ SC2086: Double quote to prevent globbing and word splitting.
                                         ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		umbim "$DBG" -n -t $tid -d "$device" unlock "$pincode" || {


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 105:
			umbim $DBG -t $tid -d "$device" disconnect
                              ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			umbim "$DBG" -t $tid -d "$device" disconnect


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 114:
	umbim $DBG -n -t $tid -d $device pinstate
              ^--^ SC2086: Double quote to prevent globbing and word splitting.
                                 ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	umbim "$DBG" -n -t $tid -d "$device" pinstate


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 118:
		umbim $DBG -t $tid -d "$device" disconnect
                      ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		umbim "$DBG" -t $tid -d "$device" disconnect


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 126:
	umbim $DBG -n -t $tid -d $device subscriber || {
              ^--^ SC2086: Double quote to prevent globbing and word splitting.
                                 ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	umbim "$DBG" -n -t $tid -d "$device" subscriber || {


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 129:
		umbim $DBG -t $tid -d "$device" disconnect
                      ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		umbim "$DBG" -t $tid -d "$device" disconnect


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 137:
	umbim $DBG -n -t $tid -d $device registration
              ^--^ SC2086: Double quote to prevent globbing and word splitting.
                                 ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	umbim "$DBG" -n -t $tid -d "$device" registration


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 157:
		umbim $DBG -t $tid -d "$device" disconnect
                      ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		umbim "$DBG" -t $tid -d "$device" disconnect


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 163:
	umbim $DBG -n -t $tid -d $device attach || {
              ^--^ SC2086: Double quote to prevent globbing and word splitting.
                                 ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	umbim "$DBG" -n -t $tid -d "$device" attach || {


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 166:
		umbim $DBG -t $tid -d "$device" disconnect
                      ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		umbim "$DBG" -t $tid -d "$device" disconnect


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 176:
	[ "$pdptype" = "ipv4" -o "$pdptype" = "ipv6" -o "$pdptype" = "ipv4v6" ] && req_pdptype="$pdptype:"
                              ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.
                                                     ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 180:
	connect_state=$(umbim $DBG -n -t $tid -d $device connect "$req_pdptype$apn" "$auth" "$username" "$password") || {
                              ^--^ SC2086: Double quote to prevent globbing and word splitting.
                                                 ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	connect_state=$(umbim "$DBG" -n -t $tid -d "$device" connect "$req_pdptype$apn" "$auth" "$username" "$password") || {


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 183:
		umbim $DBG -t $tid -d "$device" disconnect
                      ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		umbim "$DBG" -t $tid -d "$device" disconnect


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 197:
	local mbimconfig="$(umbim $DBG -n -t $tid -d $device config)"
                                  ^--^ SC2086: Double quote to prevent globbing and word splitting.
                                                     ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local mbimconfig="$(umbim "$DBG" -n -t $tid -d "$device" config)"


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 212:
		if [ -n "$ipv4address" -a "$dhcp" != 1 ]; then
                                       ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 221:
			json_add_string gateway $(_proto_mbim_get_field ipv4gateway "$mbimconfig")
                                                ^-- SC2046: Quote this to prevent word splitting.


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 227:
		[ "$peerdns" = 0 -a "$dhcp" != 1 ] || {
                                 ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 247:
		if [ -n "$ipv6address" -a "$dhcpv6" != 1 ]; then
                                       ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 262:
			json_add_string ip6gw $(_proto_mbim_get_field ipv6gateway "$mbimconfig")
                                              ^-- SC2046: Quote this to prevent word splitting.


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 272:
		[ "$peerdns" = 0 -a "$dhcpv6" != 1 ] || {
                                 ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 295:
	[ -n "$mtu" -a "$mtu" != 0 ] && {
                    ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 296:
		echo Setting MTU of $ifname to $mtu
                                    ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		echo Setting MTU of "$ifname" to $mtu


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 297:
		/sbin/ip link set dev $ifname mtu $mtu
                                      ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		/sbin/ip link set dev "$ifname" mtu $mtu


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 300:
	uci_set_state network $interface tid "$tid"
                              ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	uci_set_state network "$interface" tid "$tid"


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 306:
	_proto_mbim_setup $@
                          ^-- SC2068: Double quote array expansions to avoid re-splitting elements.


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 322:
	local tid=$(uci_get_state network $interface tid)
                                          ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local tid=$(uci_get_state network "$interface" tid)


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 328:
		umbim $DBG -t $tid -d "$device" disconnect
                      ^--^ SC2086: Double quote to prevent globbing and word splitting.
                              ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		umbim "$DBG" -t "$tid" -d "$device" disconnect


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 329:
		uci_revert_state network $interface tid
                                         ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		uci_revert_state network "$interface" tid

For more information:
  https://www.shellcheck.net/wiki/SC2068 -- Double quote array expansions to ...
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
  https://www.shellcheck.net/wiki/SC2124 -- Assigning an array to a string! A...
