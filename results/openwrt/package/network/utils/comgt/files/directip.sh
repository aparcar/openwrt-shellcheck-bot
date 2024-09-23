
In openwrt/package/network/utils/comgt/files/directip.sh line 27:
	local device apn pincode ifname auth username password sourcefilter delegate $PROTO_DEFAULT_OPTIONS
                                                                                     ^--------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local device apn pincode ifname auth username password sourcefilter delegate "$PROTO_DEFAULT_OPTIONS"


In openwrt/package/network/utils/comgt/files/directip.sh line 28:
	json_get_vars device apn pincode auth username password sourcefilter delegate $PROTO_DEFAULT_OPTIONS
                                                                                      ^--------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	json_get_vars device apn pincode auth username password sourcefilter delegate "$PROTO_DEFAULT_OPTIONS"


In openwrt/package/network/utils/comgt/files/directip.sh line 32:
	device="$(readlink -f $device)"
                              ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	device="$(readlink -f "$device")"


In openwrt/package/network/utils/comgt/files/directip.sh line 40:
	devpath="$(readlink -f /sys/class/tty/$devname/device)"
                                              ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	devpath="$(readlink -f /sys/class/tty/"$devname"/device)"

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
