
In openwrt/package/network/services/hostapd/files/wps-hotplug.sh line 8:
	ubus -S -t 30 listen wps_credentials | while read creds; do
                                                     ^--^ SC2162: read without -r will mangle backslashes.


In openwrt/package/network/services/hostapd/files/wps-hotplug.sh line 18:
			json_select $radio
                                    ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			json_select "$radio"


In openwrt/package/network/services/hostapd/files/wps-hotplug.sh line 22:
				json_select $ifc
                                            ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
				json_select "$ifc"


In openwrt/package/network/services/hostapd/files/wps-hotplug.sh line 51:
			ubus -S call $ubusobj wps_start && wps_done=1
                                     ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			ubus -S call "$ubusobj" wps_start && wps_done=1


In openwrt/package/network/services/hostapd/files/wps-hotplug.sh line 58:
		ifname="$(echo $ubusobj | cut -d'.' -f2 )"
                               ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		ifname="$(echo "$ubusobj" | cut -d'.' -f2 )"


In openwrt/package/network/services/hostapd/files/wps-hotplug.sh line 61:
			ubus -S call $ubusobj wps_start '{ "multi_ap": true }' && wps_done=1
                                     ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			ubus -S call "$ubusobj" wps_start '{ "multi_ap": true }' && wps_done=1


In openwrt/package/network/services/hostapd/files/wps-hotplug.sh line 63:
			ubus -S call $ubusobj wps_start && wps_done=1
                                     ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			ubus -S call "$ubusobj" wps_start && wps_done=1

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
  https://www.shellcheck.net/wiki/SC2162 -- read without -r will mangle backs...
