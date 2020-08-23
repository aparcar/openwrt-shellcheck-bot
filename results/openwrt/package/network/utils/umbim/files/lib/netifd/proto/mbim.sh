
In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 28:
	local device apn pincode delay $PROTO_DEFAULT_OPTIONS
                                       ^--------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local device apn pincode delay "$PROTO_DEFAULT_OPTIONS"


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 29:
	json_get_vars device apn pincode delay auth username password $PROTO_DEFAULT_OPTIONS
                                                                      ^--------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	json_get_vars device apn pincode delay auth username password "$PROTO_DEFAULT_OPTIONS"


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 47:
	devpath="$(readlink -f /sys/class/usbmisc/$devname/device/)"
                                                  ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	devpath="$(readlink -f /sys/class/usbmisc/"$devname"/device/)"


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 66:
	umbim $DBG -n -d $device caps || {
              ^--^ SC2086: Double quote to prevent globbing and word splitting.
                         ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	umbim "$DBG" -n -d "$device" caps || {


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 75:
		umbim $DBG -n -t $tid -d $device unlock "$pincode" || {
                      ^--^ SC2086: Double quote to prevent globbing and word splitting.
                                         ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		umbim "$DBG" -n -t $tid -d "$device" unlock "$pincode" || {


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 85:
	umbim $DBG -n -t $tid -d $device pinstate || {
              ^--^ SC2086: Double quote to prevent globbing and word splitting.
                                 ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	umbim "$DBG" -n -t $tid -d "$device" pinstate || {


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 94:
 	umbim $DBG -n -t $tid -d $device subscriber || {
              ^--^ SC2086: Double quote to prevent globbing and word splitting.
                                 ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
 	umbim "$DBG" -n -t $tid -d "$device" subscriber || {


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 102:
  	umbim $DBG -n -t $tid -d $device registration || {
              ^--^ SC2086: Double quote to prevent globbing and word splitting.
                                 ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
  	umbim "$DBG" -n -t $tid -d "$device" registration || {


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 110:
   	umbim $DBG -n -t $tid -d $device attach || {
              ^--^ SC2086: Double quote to prevent globbing and word splitting.
                                 ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
   	umbim "$DBG" -n -t $tid -d "$device" attach || {


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 118:
	while ! umbim $DBG -n -t $tid -d $device connect "$apn" "$auth" "$username" "$password"; do
                      ^--^ SC2086: Double quote to prevent globbing and word splitting.
                                         ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	while ! umbim "$DBG" -n -t $tid -d "$device" connect "$apn" "$auth" "$username" "$password"; do


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 124:
	uci_set_state network $interface tid "$tid"
                              ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	uci_set_state network "$interface" tid "$tid"


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 150:
	_proto_mbim_setup $@
                          ^-- SC2068: Double quote array expansions to avoid re-splitting elements.


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 158:
	return $rt
               ^-^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	return "$rt"


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 166:
	local tid=$(uci_get_state network $interface tid)
                                          ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local tid=$(uci_get_state network "$interface" tid)


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 172:
		umbim $DBG -t$tid -d "$device" disconnect
                      ^--^ SC2086: Double quote to prevent globbing and word splitting.
                             ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		umbim "$DBG" -t"$tid" -d "$device" disconnect


In openwrt/package/network/utils/umbim/files/lib/netifd/proto/mbim.sh line 173:
		uci_revert_state network $interface tid
                                         ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		uci_revert_state network "$interface" tid

For more information:
  https://www.shellcheck.net/wiki/SC2068 -- Double quote array expansions to ...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
