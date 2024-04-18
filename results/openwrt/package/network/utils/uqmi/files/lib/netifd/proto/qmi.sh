
In openwrt/package/network/utils/uqmi/files/lib/netifd/proto/qmi.sh line 38:
	local profile v6profile dhcp dhcpv6 autoconnect plmn timeout mtu $PROTO_DEFAULT_OPTIONS
                                                                         ^--------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local profile v6profile dhcp dhcpv6 autoconnect plmn timeout mtu "$PROTO_DEFAULT_OPTIONS"


In openwrt/package/network/utils/uqmi/files/lib/netifd/proto/qmi.sh line 46:
	json_get_vars ip6table timeout mtu $PROTO_DEFAULT_OPTIONS
                                           ^--------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	json_get_vars ip6table timeout mtu "$PROTO_DEFAULT_OPTIONS"


In openwrt/package/network/utils/uqmi/files/lib/netifd/proto/qmi.sh line 63:
	device="$(readlink -f $device)"
                              ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	device="$(readlink -f "$device")"


In openwrt/package/network/utils/uqmi/files/lib/netifd/proto/qmi.sh line 72:
	devpath="$(readlink -f /sys/class/usbmisc/$devname/device/)"
                                                  ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	devpath="$(readlink -f /sys/class/usbmisc/"$devname"/device/)"


In openwrt/package/network/utils/uqmi/files/lib/netifd/proto/qmi.sh line 83:
		/sbin/ip link set dev $ifname mtu $mtu
                                      ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                                  ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		/sbin/ip link set dev "$ifname" mtu "$mtu"


In openwrt/package/network/utils/uqmi/files/lib/netifd/proto/qmi.sh line 92:
		if [ "$uninitialized_timeout" -lt "$timeout" -o "$timeout" = "0" ]; then
                                                             ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/utils/uqmi/files/lib/netifd/proto/qmi.sh line 93:
			let uninitialized_timeout++
                        ^-------------------------^ SC2219: Instead of 'let expr', prefer (( expr )) .


In openwrt/package/network/utils/uqmi/files/lib/netifd/proto/qmi.sh line 111:
		if [ -z "$card_application_state" -o "$card_application_state" = "illegal" ]; then
                                                  ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/utils/uqmi/files/lib/netifd/proto/qmi.sh line 120:
				let uim_state_timeout++
                                ^---------------------^ SC2219: Instead of 'let expr', prefer (( expr )) .


In openwrt/package/network/utils/uqmi/files/lib/netifd/proto/qmi.sh line 211:
		elif [ "$mcc" -ne "${plmn:0:3}" -o "$mnc" -ne "${plmn:3}" ]; then
                                                ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/utils/uqmi/files/lib/netifd/proto/qmi.sh line 235:
		[ -f /sys/class/net/$ifname/qmi/raw_ip ] || {
                                    ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		[ -f /sys/class/net/"$ifname"/qmi/raw_ip ] || {


In openwrt/package/network/utils/uqmi/files/lib/netifd/proto/qmi.sh line 241:
		echo "Y" > /sys/class/net/$ifname/qmi/raw_ip
                                          ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		echo "Y" > /sys/class/net/"$ifname"/qmi/raw_ip


In openwrt/package/network/utils/uqmi/files/lib/netifd/proto/qmi.sh line 249:
	if [ -n "$mcc" -a -n "$mnc" ]; then
                       ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/utils/uqmi/files/lib/netifd/proto/qmi.sh line 280:
				let registration_timeout++
                                ^------------------------^ SC2219: Instead of 'let expr', prefer (( expr )) .


In openwrt/package/network/utils/uqmi/files/lib/netifd/proto/qmi.sh line 299:
	[ "$pdptype" = "ip" -o "$pdptype" = "ipv6" -o "$pdptype" = "ipv4v6" ] || pdptype="ip"
                            ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.
                                                   ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/utils/uqmi/files/lib/netifd/proto/qmi.sh line 315:
	[ "$pdptype" = "ip" -o "$pdptype" = "ipv4v6" ] && {
                            ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/utils/uqmi/files/lib/netifd/proto/qmi.sh line 352:
	[ "$pdptype" = "ipv6" -o "$pdptype" = "ipv4v6" ] && {
                              ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/utils/uqmi/files/lib/netifd/proto/qmi.sh line 410:
		if [ -z "$dhcpv6" -o "$dhcpv6" = 0 ]; then
                                  ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/utils/uqmi/files/lib/netifd/proto/qmi.sh line 411:
			json_load "$(uqmi -s -d $device -t 1000 --set-client-id wds,$cid_6 --get-current-settings)"
                                                ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                                                                    ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			json_load "$(uqmi -s -d "$device" -t 1000 --set-client-id wds,"$cid_6" --get-current-settings)"


In openwrt/package/network/utils/uqmi/files/lib/netifd/proto/qmi.sh line 454:
			json_load "$(uqmi -s -d $device -t 1000 --set-client-id wds,$cid_4 --get-current-settings)"
                                                ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                                                                    ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			json_load "$(uqmi -s -d "$device" -t 1000 --set-client-id wds,"$cid_4" --get-current-settings)"


In openwrt/package/network/utils/uqmi/files/lib/netifd/proto/qmi.sh line 520:
	json_load "$(ubus call network.interface.$interface status)"
                                                 ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	json_load "$(ubus call network.interface."$interface" status)"

For more information:
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] && [ q ] as [ p -a q...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
  https://www.shellcheck.net/wiki/SC2219 -- Instead of 'let expr', prefer (( ...
