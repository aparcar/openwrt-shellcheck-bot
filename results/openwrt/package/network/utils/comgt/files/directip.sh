
In openwrt/package/network/utils/comgt/files/directip.sh line 4:
	. /lib/functions.sh
          ^---------------^ SC1091: Not following: /lib/functions.sh was not specified as input (see shellcheck -x).


In openwrt/package/network/utils/comgt/files/directip.sh line 5:
	. ../netifd-proto.sh
          ^----------------^ SC1091: Not following: ../netifd-proto.sh was not specified as input (see shellcheck -x).


In openwrt/package/network/utils/comgt/files/directip.sh line 25:
	local device apn pincode ifname auth username password $PROTO_DEFAULT_OPTIONS
                                                               ^--------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local device apn pincode ifname auth username password "$PROTO_DEFAULT_OPTIONS"


In openwrt/package/network/utils/comgt/files/directip.sh line 26:
	json_get_vars device apn pincode auth username password $PROTO_DEFAULT_OPTIONS
                                                                ^--------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	json_get_vars device apn pincode auth username password "$PROTO_DEFAULT_OPTIONS"


In openwrt/package/network/utils/comgt/files/directip.sh line 30:
	device="$(readlink -f $device)"
                              ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	device="$(readlink -f "$device")"


In openwrt/package/network/utils/comgt/files/directip.sh line 38:
	devpath="$(readlink -f /sys/class/tty/$devname/device)"
                                              ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	devpath="$(readlink -f /sys/class/tty/"$devname"/device)"

For more information:
  https://www.shellcheck.net/wiki/SC1091 -- Not following: ../netifd-proto.sh...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
