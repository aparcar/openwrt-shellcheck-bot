
In openwrt/package/network/utils/comgt/files/ncm.sh line 30:
	local device apn auth username password pincode delay mode pdptype profile $PROTO_DEFAULT_OPTIONS
                                                                                   ^--------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local device apn auth username password pincode delay mode pdptype profile "$PROTO_DEFAULT_OPTIONS"


In openwrt/package/network/utils/comgt/files/ncm.sh line 31:
	json_get_vars device apn auth username password pincode delay mode pdptype profile $PROTO_DEFAULT_OPTIONS
                                                                                           ^--------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	json_get_vars device apn auth username password pincode delay mode pdptype profile "$PROTO_DEFAULT_OPTIONS"


In openwrt/package/network/utils/comgt/files/ncm.sh line 38:
	[ "$pdptype" = "IP" -o "$pdptype" = "IPV6" -o "$pdptype" = "IPV4V6" ] || pdptype="IP"
                            ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.
                                                   ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/utils/comgt/files/ncm.sh line 49:
	device="$(readlink -f $device)"
                              ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	device="$(readlink -f "$device")"


In openwrt/package/network/utils/comgt/files/ncm.sh line 59:
		devpath="$(readlink -f /sys/class/tty/$devname/device)"
                                                      ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		devpath="$(readlink -f /sys/class/tty/"$devname"/device)"


In openwrt/package/network/utils/comgt/files/ncm.sh line 63:
		devpath="$(readlink -f /sys/class/usbmisc/$devname/device/)"
                                                          ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		devpath="$(readlink -f /sys/class/usbmisc/"$devname"/device/)"


In openwrt/package/network/utils/comgt/files/ncm.sh line 77:
	[ $? -ne 0 -o -z "$manufacturer" ] && {
          ^-- SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.
                   ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/utils/comgt/files/ncm.sh line 85:
	[ $? -ne 0 ] && {
          ^-- SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.


In openwrt/package/network/utils/comgt/files/ncm.sh line 156:
	[ "$pdptype" = "IP" -o "$pdptype" = "IPV4V6" ] && {
                            ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/utils/comgt/files/ncm.sh line 169:
	[ "$pdptype" = "IPV6" -o "$pdptype" = "IPV4V6" ] && {
                              ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/utils/comgt/files/ncm.sh line 209:
	device="$(readlink -f $device)"
                              ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	device="$(readlink -f "$device")"


In openwrt/package/network/utils/comgt/files/ncm.sh line 220:
	json_load "$(ubus call network.interface.$interface status)"
                                                 ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	json_load "$(ubus call network.interface."$interface" status)"


In openwrt/package/network/utils/comgt/files/ncm.sh line 223:
	[ $? -ne 0 -o -z "$manufacturer" ] && {
          ^-- SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.
                   ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/utils/comgt/files/ncm.sh line 226:
		[ $? -ne 0 -o -z "$manufacturer" ] && {
                  ^-- SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.
                           ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.

For more information:
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] || [ q ] as [ p -o q...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
  https://www.shellcheck.net/wiki/SC2181 -- Check exit code directly with e.g...
