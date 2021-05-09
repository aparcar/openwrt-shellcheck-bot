
In openwrt/package/network/utils/uqmi/files/lib/netifd/proto/qmi.sh line 35:
	local profile dhcp dhcpv6 autoconnect plmn timeout mtu $PROTO_DEFAULT_OPTIONS
                                                               ^--------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local profile dhcp dhcpv6 autoconnect plmn timeout mtu "$PROTO_DEFAULT_OPTIONS"


In openwrt/package/network/utils/uqmi/files/lib/netifd/proto/qmi.sh line 42:
	json_get_vars ip6table timeout mtu $PROTO_DEFAULT_OPTIONS
                                           ^--------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	json_get_vars ip6table timeout mtu "$PROTO_DEFAULT_OPTIONS"


In openwrt/package/network/utils/uqmi/files/lib/netifd/proto/qmi.sh line 59:
	device="$(readlink -f $device)"
                              ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	device="$(readlink -f "$device")"


In openwrt/package/network/utils/uqmi/files/lib/netifd/proto/qmi.sh line 68:
	devpath="$(readlink -f /sys/class/usbmisc/$devname/device/)"
                                                  ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	devpath="$(readlink -f /sys/class/usbmisc/"$devname"/device/)"


In openwrt/package/network/utils/uqmi/files/lib/netifd/proto/qmi.sh line 79:
		/sbin/ip link set dev $ifname mtu $mtu
                                      ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                                  ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		/sbin/ip link set dev "$ifname" mtu "$mtu"


In openwrt/package/network/utils/uqmi/files/lib/netifd/proto/qmi.sh line 86:
		if [ "$uninitialized_timeout" -lt "$timeout" -o "$timeout" = "0" ]; then
                                                             ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/utils/uqmi/files/lib/netifd/proto/qmi.sh line 87:
			let uninitialized_timeout++
                        ^-------------------------^ SC2219: Instead of 'let expr', prefer (( expr )) .


In openwrt/package/network/utils/uqmi/files/lib/netifd/proto/qmi.sh line 169:
		elif [ "$mcc" -ne "${plmn:0:3}" -o "$mnc" -ne "${plmn:3}" ]; then
                                                ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/utils/uqmi/files/lib/netifd/proto/qmi.sh line 179:
	if [ -n "$mcc" -a -n "$mnc" ]; then
                       ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/utils/uqmi/files/lib/netifd/proto/qmi.sh line 201:
		[ -f /sys/class/net/$ifname/qmi/raw_ip ] || {
                                    ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		[ -f /sys/class/net/"$ifname"/qmi/raw_ip ] || {


In openwrt/package/network/utils/uqmi/files/lib/netifd/proto/qmi.sh line 207:
		echo "Y" > /sys/class/net/$ifname/qmi/raw_ip
                                          ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		echo "Y" > /sys/class/net/"$ifname"/qmi/raw_ip


In openwrt/package/network/utils/uqmi/files/lib/netifd/proto/qmi.sh line 229:
				let registration_timeout++
                                ^------------------------^ SC2219: Instead of 'let expr', prefer (( expr )) .


In openwrt/package/network/utils/uqmi/files/lib/netifd/proto/qmi.sh line 249:
	[ "$pdptype" = "ip" -o "$pdptype" = "ipv6" -o "$pdptype" = "ipv4v6" ] || pdptype="ip"
                            ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.
                                                   ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/utils/uqmi/files/lib/netifd/proto/qmi.sh line 258:
	[ "$pdptype" = "ip" -o "$pdptype" = "ipv4v6" ] && {
                            ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/utils/uqmi/files/lib/netifd/proto/qmi.sh line 295:
	[ "$pdptype" = "ipv6" -o "$pdptype" = "ipv4v6" ] && {
                              ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/utils/uqmi/files/lib/netifd/proto/qmi.sh line 350:
		if [ -z "$dhcpv6" -o "$dhcpv6" = 0 ]; then
                                  ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/utils/uqmi/files/lib/netifd/proto/qmi.sh line 351:
			json_load "$(uqmi -s -d $device --set-client-id wds,$cid_6 --get-current-settings)"
                                                ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                                                            ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			json_load "$(uqmi -s -d "$device" --set-client-id wds,"$cid_6" --get-current-settings)"


In openwrt/package/network/utils/uqmi/files/lib/netifd/proto/qmi.sh line 392:
			json_load "$(uqmi -s -d $device --set-client-id wds,$cid_4 --get-current-settings)"
                                                ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                                                            ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			json_load "$(uqmi -s -d "$device" --set-client-id wds,"$cid_4" --get-current-settings)"


In openwrt/package/network/utils/uqmi/files/lib/netifd/proto/qmi.sh line 458:
	json_load "$(ubus call network.interface.$interface status)"
                                                 ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	json_load "$(ubus call network.interface."$interface" status)"

For more information:
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] && [ q ] as [ p -a q...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
  https://www.shellcheck.net/wiki/SC2219 -- Instead of 'let expr', prefer (( ...
