
In openwrt/package/network/services/hostapd/files/hostapd.sh line 1:
. /lib/functions/network.sh
  ^-----------------------^ SC1091: Not following: /lib/functions/network.sh was not specified as input (see shellcheck -x).


In openwrt/package/network/services/hostapd/files/hostapd.sh line 7:
	append $var "$val" ","
               ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	append "$var" "$val" ","


In openwrt/package/network/services/hostapd/files/hostapd.sh line 8:
	[ $sub -gt 0 ] && append $var "."
                                 ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ $sub -gt 0 ] && append "$var" "."


In openwrt/package/network/services/hostapd/files/hostapd.sh line 14:
	append $var "$val" " "
               ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	append "$var" "$val" " "


In openwrt/package/network/services/hostapd/files/hostapd.sh line 26:
				zidx=$(($idx - 1))
                                        ^--^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/network/services/hostapd/files/hostapd.sh line 29:
					append $var "wep_key${zidx}=$(prepare_key_wep "$ckey")" "$N$T"
                                               ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
					append "$var" "wep_key${zidx}=$(prepare_key_wep "$ckey")" "$N$T"


In openwrt/package/network/services/hostapd/files/hostapd.sh line 34:
			append $var "wep_key0=$(prepare_key_wep "$key")" "$N$T"
                               ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			append "$var" "wep_key0=$(prepare_key_wep "$key")" "$N$T"


In openwrt/package/network/services/hostapd/files/hostapd.sh line 40:
	local auth_type_l="$(echo $auth_type | tr 'a-z' 'A-Z')"
                                  ^--------^ SC2086: Double quote to prevent globbing and word splitting.
                                                  ^---^ SC2018: Use '[:lower:]' to support accents and foreign alphabets.
                                                        ^---^ SC2019: Use '[:upper:]' to support accents and foreign alphabets.

Did you mean: 
	local auth_type_l="$(echo "$auth_type" | tr 'a-z' 'A-Z')"


In openwrt/package/network/services/hostapd/files/hostapd.sh line 132:
		[ "$hwmode" = "a" -a "$doth" -gt 0 ] && append base_cfg "ieee80211h=1" "$N"
                                  ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/services/hostapd/files/hostapd.sh line 137:
	local brlist= br
                    ^-- SC1007: Remove space after = if trying to assign a value (for empty string, use var='' ... ).


In openwrt/package/network/services/hostapd/files/hostapd.sh line 139:
	local rlist= r
                   ^-- SC1007: Remove space after = if trying to assign a value (for empty string, use var='' ... ).


In openwrt/package/network/services/hostapd/files/hostapd.sh line 269:
	echo "${vid} ${ifname}-${name}" >> /var/run/hostapd-${ifname}.vlan
                                                            ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo "${vid} ${ifname}-${name}" >> /var/run/hostapd-"${ifname}".vlan


In openwrt/package/network/services/hostapd/files/hostapd.sh line 276:
	rm -f /var/run/hostapd-${ifname}.vlan
                               ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	rm -f /var/run/hostapd-"${ifname}".vlan


In openwrt/package/network/services/hostapd/files/hostapd.sh line 277:
	for_each_vlan hostapd_set_vlan_file ${ifname}
                                            ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	for_each_vlan hostapd_set_vlan_file "${ifname}"


In openwrt/package/network/services/hostapd/files/hostapd.sh line 288:
	echo "${vlan_id} ${mac} ${key}" >> /var/run/hostapd-${ifname}.psk
                                                            ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo "${vlan_id} ${mac} ${key}" >> /var/run/hostapd-"${ifname}".psk


In openwrt/package/network/services/hostapd/files/hostapd.sh line 294:
	rm -f /var/run/hostapd-${ifname}.psk
                               ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	rm -f /var/run/hostapd-"${ifname}".psk


In openwrt/package/network/services/hostapd/files/hostapd.sh line 295:
	for_each_station hostapd_set_psk_file ${ifname}
                                              ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	for_each_station hostapd_set_psk_file "${ifname}"


In openwrt/package/network/services/hostapd/files/hostapd.sh line 413:
			[ -z "$wpa_psk_file" ] && set_default wpa_psk_file /var/run/hostapd-$ifname.psk
                                                                                            ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			[ -z "$wpa_psk_file" ] && set_default wpa_psk_file /var/run/hostapd-"$ifname".psk


In openwrt/package/network/services/hostapd/files/hostapd.sh line 418:
			[ "$eapol_version" -ge "1" -a "$eapol_version" -le "2" ] && append bss_conf "eapol_version=$eapol_version" "$N"
                                                   ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/services/hostapd/files/hostapd.sh line 449:
			[ -n "$dae_client" -a -n "$dae_secret" ] && {
                                           ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/services/hostapd/files/hostapd.sh line 459:
			[ "$eapol_version" -ge "1" -a "$eapol_version" -le "2" ] && append bss_conf "eapol_version=$eapol_version" "$N"
                                                   ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/services/hostapd/files/hostapd.sh line 470:
	local auth_algs=$((($auth_mode_shared << 1) | $auth_mode_open))
                            ^---------------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                      ^-------------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/network/services/hostapd/files/hostapd.sh line 486:
	[ -n "$wps_possible" -a -n "$config_methods" ] && {
                             ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/services/hostapd/files/hostapd.sh line 496:
		[ "$ext_registrar" -gt 0 -a -n "$network_bridge" ] && append bss_conf "upnp_iface=$network_bridge" "$N"
                                         ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/services/hostapd/files/hostapd.sh line 611:
		if [ -n "$network_bridge" -a "$rsn_preauth" = 1 ]; then
                                          ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/services/hostapd/files/hostapd.sh line 671:
			[ -n "$macfile" -a -f "$macfile" ] && cat "$macfile"
                                        ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/services/hostapd/files/hostapd.sh line 675:
	[ -n "$vlan_possible" -a -n "$dynamic_vlan" ] && {
                              ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/services/hostapd/files/hostapd.sh line 678:
		[ -z "$vlan_file" ] && set_default vlan_file /var/run/hostapd-$ifname.vlan
                                                                              ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		[ -z "$vlan_file" ] && set_default vlan_file /var/run/hostapd-"$ifname".vlan


In openwrt/package/network/services/hostapd/files/hostapd.sh line 691:
	bss_md5sum=$(echo $bss_conf | md5sum | cut -d" " -f1)
                          ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	bss_md5sum=$(echo "$bss_conf" | md5sum | cut -d" " -f1)


In openwrt/package/network/services/hostapd/files/hostapd.sh line 714:
		($log_80211  << 0) | \
                 ^--------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/network/services/hostapd/files/hostapd.sh line 715:
		($log_8021x  << 1) | \
                 ^--------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/network/services/hostapd/files/hostapd.sh line 716:
		($log_radius << 2) | \
                 ^---------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/network/services/hostapd/files/hostapd.sh line 717:
		($log_wpa    << 3) | \
                 ^------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/network/services/hostapd/files/hostapd.sh line 718:
		($log_driver << 4) | \
                 ^---------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/network/services/hostapd/files/hostapd.sh line 719:
		($log_iapp   << 5) | \
                 ^-------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/network/services/hostapd/files/hostapd.sh line 720:
		($log_mlme   << 6)   \
                 ^-------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/network/services/hostapd/files/hostapd.sh line 740:
	rm -rf "$_rpath/$1" "$_config"
               ^----------^ SC2115: Use "${var:?}" to ensure this never expands to / .


In openwrt/package/network/services/hostapd/files/hostapd.sh line 758:
				[ "$wds" = 1 -o "$multi_ap" = 1 ] || fail=1
                                             ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/services/hostapd/files/hostapd.sh line 875:
	[ "$multi_ap" = 1 -a "$_w_mode" = "sta" ] && append network_data "multi_ap_backhaul_sta=1" "$N$T"
                          ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/services/hostapd/files/hostapd.sh line 917:
			if [ "$ca_cert_usesystem" -eq "1" -a -f "/etc/ssl/certs/ca-certificates.crt" ]; then
                                                          ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/services/hostapd/files/hostapd.sh line 966:
						if [ "$ca_cert2_usesystem" -eq "1" -a -f "/etc/ssl/certs/ca-certificates.crt" ]; then
                                                                                   ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/services/hostapd/files/hostapd.sh line 1014:
							auth="$(echo $auth | cut -b 5- )"
                                                                     ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
							auth="$(echo "$auth" | cut -b 5- )"


In openwrt/package/network/services/hostapd/files/hostapd.sh line 1051:
			append network_data "eap=$(echo $eap_type | tr 'a-z' 'A-Z')" "$N$T"
                                                        ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                       ^---^ SC2018: Use '[:lower:]' to support accents and foreign alphabets.
                                                                             ^---^ SC2019: Use '[:upper:]' to support accents and foreign alphabets.

Did you mean: 
			append network_data "eap=$(echo "$eap_type" | tr 'a-z' 'A-Z')" "$N$T"

For more information:
  https://www.shellcheck.net/wiki/SC1007 -- Remove space after = if trying to...
  https://www.shellcheck.net/wiki/SC2115 -- Use "${var:?}" to ensure this nev...
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] && [ q ] as [ p -a q...
