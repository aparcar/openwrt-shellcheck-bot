
In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 34:
        local mbimconfig="$@"
                         ^--^ SC2124: Assigning an array to a string! Assign as array, or use * instead of @ to concatenate.


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 49:
	local dhcp dhcpv6 pdptype ip4table ip6table mtu $PROTO_DEFAULT_OPTIONS
                                                        ^--------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local dhcp dhcpv6 pdptype ip4table ip6table mtu "$PROTO_DEFAULT_OPTIONS"


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 51:
	json_get_vars dhcp dhcpv6 sourcefilter pdptype ip4table ip6table mtu $PROTO_DEFAULT_OPTIONS
                                                                             ^--------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	json_get_vars dhcp dhcpv6 sourcefilter pdptype ip4table ip6table mtu "$PROTO_DEFAULT_OPTIONS"


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 53:
	[ ! -e /proc/sys/net/ipv6 ] && ipv6=0 || json_get_var ipv6 ipv6
                                    ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 71:
	devpath="$(readlink -f /sys/class/usbmisc/$devname/device/)"
                                                  ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	devpath="$(readlink -f /sys/class/usbmisc/"$devname"/device/)"


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 90:
	umbim $DBG -n -d $device caps || {
              ^--^ SC2086: Double quote to prevent globbing and word splitting.
                         ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	umbim "$DBG" -n -d "$device" caps || {


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 93:
		umbim $DBG -t $tid -d "$device" disconnect
                      ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		umbim "$DBG" -t $tid -d "$device" disconnect


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 101:
		umbim $DBG -n -t $tid -d $device unlock "$pincode" || {
                      ^--^ SC2086: Double quote to prevent globbing and word splitting.
                                         ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		umbim "$DBG" -n -t $tid -d "$device" unlock "$pincode" || {


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 104:
			umbim $DBG -t $tid -d "$device" disconnect
                              ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			umbim "$DBG" -t $tid -d "$device" disconnect


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 113:
	umbim $DBG -n -t $tid -d $device pinstate
              ^--^ SC2086: Double quote to prevent globbing and word splitting.
                                 ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	umbim "$DBG" -n -t $tid -d "$device" pinstate


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 117:
		umbim $DBG -t $tid -d "$device" disconnect
                      ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		umbim "$DBG" -t $tid -d "$device" disconnect


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 125:
	umbim $DBG -n -t $tid -d $device subscriber || {
              ^--^ SC2086: Double quote to prevent globbing and word splitting.
                                 ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	umbim "$DBG" -n -t $tid -d "$device" subscriber || {


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 128:
		umbim $DBG -t $tid -d "$device" disconnect
                      ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		umbim "$DBG" -t $tid -d "$device" disconnect


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 136:
	umbim $DBG -n -t $tid -d $device registration
              ^--^ SC2086: Double quote to prevent globbing and word splitting.
                                 ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	umbim "$DBG" -n -t $tid -d "$device" registration


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 156:
		umbim $DBG -t $tid -d "$device" disconnect
                      ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		umbim "$DBG" -t $tid -d "$device" disconnect


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 162:
	umbim $DBG -n -t $tid -d $device attach || {
              ^--^ SC2086: Double quote to prevent globbing and word splitting.
                                 ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	umbim "$DBG" -n -t $tid -d "$device" attach || {


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 165:
		umbim $DBG -t $tid -d "$device" disconnect
                      ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		umbim "$DBG" -t $tid -d "$device" disconnect


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 175:
	[ "$pdptype" = "ipv4" -o "$pdptype" = "ipv6" -o "$pdptype" = "ipv4v6" ] && req_pdptype="$pdptype:"
                              ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.
                                                     ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 179:
	connect_state=$(umbim $DBG -n -t $tid -d $device connect "$req_pdptype$apn" "$auth" "$username" "$password") || {
                              ^--^ SC2086: Double quote to prevent globbing and word splitting.
                                                 ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	connect_state=$(umbim "$DBG" -n -t $tid -d "$device" connect "$req_pdptype$apn" "$auth" "$username" "$password") || {


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 182:
		umbim $DBG -t $tid -d "$device" disconnect
                      ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		umbim "$DBG" -t $tid -d "$device" disconnect


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 196:
	local mbimconfig="$(umbim $DBG -n -t $tid -d $device config)"
                                  ^--^ SC2086: Double quote to prevent globbing and word splitting.
                                                     ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local mbimconfig="$(umbim "$DBG" -n -t $tid -d "$device" config)"


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 211:
		if [ -n "$ipv4address" -a "$dhcp" != 1 ]; then
                                       ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 220:
			json_add_string gateway $(_proto_mbim_get_field ipv4gateway "$mbimconfig")
                                                ^-- SC2046: Quote this to prevent word splitting.


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 226:
		[ "$peerdns" = 0 -a "$dhcp" != 1 ] || {
                                 ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 246:
		if [ -n "$ipv6address" -a "$dhcpv6" != 1 ]; then
                                       ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 261:
			json_add_string ip6gw $(_proto_mbim_get_field ipv6gateway "$mbimconfig")
                                              ^-- SC2046: Quote this to prevent word splitting.


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 270:
		[ "$peerdns" = 0 -a "$dhcpv6" != 1 ] || {
                                 ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 293:
	[ -n "$mtu" -a "$mtu" != 0 ] && {
                    ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 294:
		echo Setting MTU of $ifname to $mtu
                                    ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		echo Setting MTU of "$ifname" to $mtu


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 295:
		/sbin/ip link set dev $ifname mtu $mtu
                                      ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		/sbin/ip link set dev "$ifname" mtu $mtu


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 298:
	uci_set_state network $interface tid "$tid"
                              ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	uci_set_state network "$interface" tid "$tid"


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 304:
	_proto_mbim_setup $@
                          ^-- SC2068: Double quote array expansions to avoid re-splitting elements.


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 320:
	local tid=$(uci_get_state network $interface tid)
                                          ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local tid=$(uci_get_state network "$interface" tid)


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 326:
		umbim $DBG -t $tid -d "$device" disconnect
                      ^--^ SC2086: Double quote to prevent globbing and word splitting.
                              ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		umbim "$DBG" -t "$tid" -d "$device" disconnect


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 327:
		uci_revert_state network $interface tid
                                         ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		uci_revert_state network "$interface" tid

For more information:
  https://www.shellcheck.net/wiki/SC2068 -- Double quote array expansions to ...
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
  https://www.shellcheck.net/wiki/SC2124 -- Assigning an array to a string! A...
