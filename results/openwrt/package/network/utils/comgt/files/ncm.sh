
In openwrt/package/network/utils/comgt/files/ncm.sh line 33:
	local device ifname  apn auth username password pincode delay mode pdptype profile $PROTO_DEFAULT_OPTIONS
                                                                                           ^--------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local device ifname  apn auth username password pincode delay mode pdptype profile "$PROTO_DEFAULT_OPTIONS"


In openwrt/package/network/utils/comgt/files/ncm.sh line 34:
	json_get_vars device ifname apn auth username password pincode delay mode pdptype sourcefilter delegate profile $PROTO_DEFAULT_OPTIONS
                                                                                                                        ^--------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	json_get_vars device ifname apn auth username password pincode delay mode pdptype sourcefilter delegate profile "$PROTO_DEFAULT_OPTIONS"


In openwrt/package/network/utils/comgt/files/ncm.sh line 43:
	[ "$pdptype" = "IP" -o "$pdptype" = "IPV6" -o "$pdptype" = "IPV4V6" ] || pdptype="IP"
                            ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.
                                                   ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/utils/comgt/files/ncm.sh line 46:
	[ -z "$context_type" -a "$pdptype" = "IPV6" ] && context_type=2
                             ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/utils/comgt/files/ncm.sh line 58:
	device="$(readlink -f $device)"
                              ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	device="$(readlink -f "$device")"


In openwrt/package/network/utils/comgt/files/ncm.sh line 69:
			devpath="$(readlink -f /sys/class/tty/$devname/device)"
                                                              ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			devpath="$(readlink -f /sys/class/tty/"$devname"/device)"


In openwrt/package/network/utils/comgt/files/ncm.sh line 73:
			devpath="$(readlink -f /sys/class/tty/$devname/device)"
                                                              ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			devpath="$(readlink -f /sys/class/tty/"$devname"/device)"


In openwrt/package/network/utils/comgt/files/ncm.sh line 77:
			devpath="$(readlink -f /sys/class/usbmisc/$devname/device/)"
                                                                  ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			devpath="$(readlink -f /sys/class/usbmisc/"$devname"/device/)"


In openwrt/package/network/utils/comgt/files/ncm.sh line 81:
		ifname="$(ls $(ls -1 -d $ifpath | head -n 1))"
                             ^-----------------------------^ SC2046: Quote this to prevent word splitting.
                               ^--------------^ SC2012: Use find instead of ls to better handle non-alphanumeric filenames.
                                        ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		ifname="$(ls $(ls -1 -d "$ifpath" | head -n 1))"


In openwrt/package/network/utils/comgt/files/ncm.sh line 117:
	[ $? -ne 0 ] && {
          ^-- SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.


In openwrt/package/network/utils/comgt/files/ncm.sh line 188:
	[ "$pdptype" = "IP" -o "$pdptype" = "IPV4V6" ] && {
                            ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/utils/comgt/files/ncm.sh line 201:
	[ "$pdptype" = "IPV6" -o "$pdptype" = "IPV4V6" ] && {
                              ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/utils/comgt/files/ncm.sh line 243:
	device="$(readlink -f $device)"
                              ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	device="$(readlink -f "$device")"


In openwrt/package/network/utils/comgt/files/ncm.sh line 254:
	json_load "$(ubus call network.interface.$interface status)"
                                                 ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	json_load "$(ubus call network.interface."$interface" status)"


In openwrt/package/network/utils/comgt/files/ncm.sh line 257:
	[ $? -ne 0 -o -z "$manufacturer" ] && {
          ^-- SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.
                   ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/utils/comgt/files/ncm.sh line 260:
		[ $? -ne 0 -o -z "$manufacturer" ] && {
                  ^-- SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.
                           ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] && [ q ] as [ p -a q...
  https://www.shellcheck.net/wiki/SC2012 -- Use find instead of ls to better ...
