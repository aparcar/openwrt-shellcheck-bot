
In openwrt/package/network/config/wifi-scripts/files/lib/netifd/netifd-wireless.sh line 4:
. $NETIFD_MAIN_DIR/utils.sh
  ^--------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
. "$NETIFD_MAIN_DIR"/utils.sh


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/netifd-wireless.sh line 33:
	[ "${#key}" -eq 10 -a $hex -eq 1 ] || \
                           ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/netifd-wireless.sh line 34:
	[ "${#key}" -eq 26 -a $hex -eq 1 ] || {
                           ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/netifd-wireless.sh line 100:
	json_set_namespace $old_cb
                           ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	json_set_namespace "$old_cb"


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/netifd-wireless.sh line 124:
_wdev_notify() {
^-- SC2120: _wdev_notify references arguments, but none are ever passed.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/netifd-wireless.sh line 128:
	ubus $options call network.wireless notify "$(json_dump)"
             ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	ubus "$options" call network.wireless notify "$(json_dump)"


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/netifd-wireless.sh line 149:
	_wdev_notify
        ^----------^ SC2119: Use _wdev_notify "$@" if function's $1 should mean script's $1.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/netifd-wireless.sh line 159:
	_wdev_notify
        ^----------^ SC2119: Use _wdev_notify "$@" if function's $1 should mean script's $1.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/netifd-wireless.sh line 164:
	_wdev_notify
        ^----------^ SC2119: Use _wdev_notify "$@" if function's $1 should mean script's $1.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/netifd-wireless.sh line 170:
	_wdev_notify
        ^----------^ SC2119: Use _wdev_notify "$@" if function's $1 should mean script's $1.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/netifd-wireless.sh line 181:
	exe2="$(readlink -f /proc/$1/exe)"
                                  ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	exe2="$(readlink -f /proc/"$1"/exe)"


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/netifd-wireless.sh line 183:
	_wdev_notify
        ^----------^ SC2119: Use _wdev_notify "$@" if function's $1 should mean script's $1.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/netifd-wireless.sh line 189:
	_wdev_notify
        ^----------^ SC2119: Use _wdev_notify "$@" if function's $1 should mean script's $1.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/netifd-wireless.sh line 195:
	_wdev_notify
        ^----------^ SC2119: Use _wdev_notify "$@" if function's $1 should mean script's $1.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/netifd-wireless.sh line 308:
	[ ${isolate:-0} -gt 0 -o -z "$network_bridge" ] && return
          ^-----------^ SC2086: Double quote to prevent globbing and word splitting.
                              ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.

Did you mean: 
	[ "${isolate:-0}" -gt 0 -o -z "$network_bridge" ] && return


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/netifd-wireless.sh line 309:
	[ ${multicast_to_unicast:-1} -gt 0 -o ${proxy_arp:-0} -gt 0 ] && json_add_boolean isolate 1
          ^------------------------^ SC2086: Double quote to prevent globbing and word splitting.
                                           ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.
                                              ^-------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ "${multicast_to_unicast:-1}" -gt 0 -o "${proxy_arp:-0}" -gt 0 ] && json_add_boolean isolate 1

For more information:
  https://www.shellcheck.net/wiki/SC2120 -- _wdev_notify references arguments...
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] && [ q ] as [ p -a q...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
