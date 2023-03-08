
In openwrt/package/network/services/hostapd/files/hostapd.sh line 8:
	append $var "$val" ","
               ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	append "$var" "$val" ","


In openwrt/package/network/services/hostapd/files/hostapd.sh line 9:
	[ $sub -gt 0 ] && append $var "."
                                 ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ $sub -gt 0 ] && append "$var" "."


In openwrt/package/network/services/hostapd/files/hostapd.sh line 15:
	append $var "$val" " "
               ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	append "$var" "$val" " "


In openwrt/package/network/services/hostapd/files/hostapd.sh line 27:
				zidx="$(($idx - 1))"
                                         ^--^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/network/services/hostapd/files/hostapd.sh line 30:
					append $var "wep_key${zidx}=$(prepare_key_wep "$ckey")" "$N$T"
                                               ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
					append "$var" "wep_key${zidx}=$(prepare_key_wep "$ckey")" "$N$T"


In openwrt/package/network/services/hostapd/files/hostapd.sh line 35:
			append $var "wep_key0=$(prepare_key_wep "$key")" "$N$T"
                               ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			append "$var" "wep_key0=$(prepare_key_wep "$key")" "$N$T"


In openwrt/package/network/services/hostapd/files/hostapd.sh line 41:
	local auth_type_l="$(echo $auth_type | tr 'a-z' 'A-Z')"
                                  ^--------^ SC2086: Double quote to prevent globbing and word splitting.
                                                  ^---^ SC2018: Use '[:lower:]' to support accents and foreign alphabets.
                                                        ^---^ SC2019: Use '[:upper:]' to support accents and foreign alphabets.

Did you mean: 
	local auth_type_l="$(echo "$auth_type" | tr 'a-z' 'A-Z')"


In openwrt/package/network/services/hostapd/files/hostapd.sh line 156:
		[ "$hwmode" = "a" -a "$doth" -gt 0 ] && append base_cfg "ieee80211h=1" "$N"
                                  ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/services/hostapd/files/hostapd.sh line 161:
	local brlist= br
                    ^-- SC1007: Remove space after = if trying to assign a value (for empty string, use var='' ... ).


In openwrt/package/network/services/hostapd/files/hostapd.sh line 163:
	local rlist= r
                   ^-- SC1007: Remove space after = if trying to assign a value (for empty string, use var='' ... ).


In openwrt/package/network/services/hostapd/files/hostapd.sh line 385:
	echo "${vid} ${ifname}-${name}" >> /var/run/hostapd-${ifname}.vlan
                                                            ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo "${vid} ${ifname}-${name}" >> /var/run/hostapd-"${ifname}".vlan


In openwrt/package/network/services/hostapd/files/hostapd.sh line 392:
	rm -f /var/run/hostapd-${ifname}.vlan
                               ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	rm -f /var/run/hostapd-"${ifname}".vlan


In openwrt/package/network/services/hostapd/files/hostapd.sh line 393:
	for_each_vlan hostapd_set_vlan_file ${ifname}
                                            ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	for_each_vlan hostapd_set_vlan_file "${ifname}"


In openwrt/package/network/services/hostapd/files/hostapd.sh line 404:
	echo "${vlan_id} ${mac} ${key}" >> /var/run/hostapd-${ifname}.psk
                                                            ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo "${vlan_id} ${mac} ${key}" >> /var/run/hostapd-"${ifname}".psk


In openwrt/package/network/services/hostapd/files/hostapd.sh line 410:
	rm -f /var/run/hostapd-${ifname}.psk
                               ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	rm -f /var/run/hostapd-"${ifname}".psk


In openwrt/package/network/services/hostapd/files/hostapd.sh line 411:
	for_each_station hostapd_set_psk_file ${ifname}
                                              ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	for_each_station hostapd_set_psk_file "${ifname}"


In openwrt/package/network/services/hostapd/files/hostapd.sh line 684:
			[ -z "$wpa_psk_file" ] && set_default wpa_psk_file /var/run/hostapd-$ifname.psk
                                                                                            ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			[ -z "$wpa_psk_file" ] && set_default wpa_psk_file /var/run/hostapd-"$ifname".psk


In openwrt/package/network/services/hostapd/files/hostapd.sh line 689:
			[ "$eapol_version" -ge "1" -a "$eapol_version" -le "2" ] && append bss_conf "eapol_version=$eapol_version" "$N"
                                                   ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/services/hostapd/files/hostapd.sh line 732:
					[ -z "$fils_dhcp" -a -n "$network_bridge" -a -n "$network_ifname" ] && \
                                                          ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.
                                                                                  ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/services/hostapd/files/hostapd.sh line 746:
			[ -n "$dae_client" -a -n "$dae_secret" ] && {
                                           ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/services/hostapd/files/hostapd.sh line 762:
			[ "$eapol_version" -ge "1" -a "$eapol_version" -le "2" ] && append bss_conf "eapol_version=$eapol_version" "$N"
                                                   ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/services/hostapd/files/hostapd.sh line 790:
	local auth_algs="$((($auth_mode_shared << 1) | $auth_mode_open))"
                             ^---------------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                       ^-------------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/network/services/hostapd/files/hostapd.sh line 806:
	[ -n "$wps_possible" -a -n "$config_methods" ] && {
                             ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/services/hostapd/files/hostapd.sh line 816:
		[ "$ext_registrar" -gt 0 -a -n "$network_bridge" ] && append bss_conf "upnp_iface=$network_bridge" "$N"
                                         ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/services/hostapd/files/hostapd.sh line 926:
				[ -n "$r0kh" -a -n "$r1kh" ] || {
                                             ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/services/hostapd/files/hostapd.sh line 927:
					ft_key=`echo -n "$mobility_domain/${auth_secret:-${key}}" | md5sum | awk '{print $1}'`
                                               ^-- SC2006: Use $(...) notation instead of legacy backticked `...`.

Did you mean: 
					ft_key=$(echo -n "$mobility_domain/${auth_secret:-${key}}" | md5sum | awk '{print $1}')


In openwrt/package/network/services/hostapd/files/hostapd.sh line 957:
		if [ -n "$network_bridge" -a "$rsn_preauth" = 1 ]; then
                                          ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/services/hostapd/files/hostapd.sh line 973:
		[ "$auth_cache" = 0 -a "$fils" = 0 ] && append bss_conf "disable_pmksa_caching=1" "$N"
                                    ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/services/hostapd/files/hostapd.sh line 1021:
			[ -n "$macfile" -a -f "$macfile" ] && cat "$macfile"
                                        ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/services/hostapd/files/hostapd.sh line 1025:
	[ -n "$vlan_possible" -a -n "$dynamic_vlan" ] && {
                              ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/services/hostapd/files/hostapd.sh line 1028:
		[ -z "$vlan_file" ] && set_default vlan_file /var/run/hostapd-$ifname.vlan
                                                                              ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		[ -z "$vlan_file" ] && set_default vlan_file /var/run/hostapd-"$ifname".vlan


In openwrt/package/network/services/hostapd/files/hostapd.sh line 1106:
	set_default disable_dgaf $hs20
                                 ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	set_default disable_dgaf "$hs20"


In openwrt/package/network/services/hostapd/files/hostapd.sh line 1159:
	bss_md5sum="$(echo $bss_conf | md5sum | cut -d" " -f1)"
                           ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	bss_md5sum="$(echo "$bss_conf" | md5sum | cut -d" " -f1)"


In openwrt/package/network/services/hostapd/files/hostapd.sh line 1182:
		($log_80211  << 0) | \
                 ^--------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/network/services/hostapd/files/hostapd.sh line 1183:
		($log_8021x  << 1) | \
                 ^--------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/network/services/hostapd/files/hostapd.sh line 1184:
		($log_radius << 2) | \
                 ^---------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/network/services/hostapd/files/hostapd.sh line 1185:
		($log_wpa    << 3) | \
                 ^------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/network/services/hostapd/files/hostapd.sh line 1186:
		($log_driver << 4) | \
                 ^---------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/network/services/hostapd/files/hostapd.sh line 1187:
		($log_iapp   << 5) | \
                 ^-------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/network/services/hostapd/files/hostapd.sh line 1188:
		($log_mlme   << 6)   \
                 ^-------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/network/services/hostapd/files/hostapd.sh line 1208:
	rm -rf "$_rpath/$1" "$_config"
               ^----------^ SC2115: Use "${var:?}" to ensure this never expands to / .


In openwrt/package/network/services/hostapd/files/hostapd.sh line 1226:
				[ "$wds" = 1 -o "$multi_ap" = 1 ] || fail=1
                                             ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/services/hostapd/files/hostapd.sh line 1341:
		[ "$encryption" = "none" -o -z "$encryption" ] || append wpa_key_mgmt "SAE"
                                         ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/services/hostapd/files/hostapd.sh line 1393:
			if [ "$ca_cert_usesystem" -eq "1" -a -f "/etc/ssl/certs/ca-certificates.crt" ]; then
                                                          ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/services/hostapd/files/hostapd.sh line 1442:
						if [ "$ca_cert2_usesystem" -eq "1" -a -f "/etc/ssl/certs/ca-certificates.crt" ]; then
                                                                                   ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/services/hostapd/files/hostapd.sh line 1490:
							auth="$(echo $auth | cut -b 5- )"
                                                                     ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
							auth="$(echo "$auth" | cut -b 5- )"


In openwrt/package/network/services/hostapd/files/hostapd.sh line 1527:
			append network_data "eap=$(echo $eap_type | tr 'a-z' 'A-Z')" "$N$T"
                                                        ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                       ^---^ SC2018: Use '[:lower:]' to support accents and foreign alphabets.
                                                                             ^---^ SC2019: Use '[:upper:]' to support accents and foreign alphabets.

Did you mean: 
			append network_data "eap=$(echo "$eap_type" | tr 'a-z' 'A-Z')" "$N$T"


In openwrt/package/network/services/hostapd/files/hostapd.sh line 1607:
	[ "$ret" != 0 -o -z "$supplicant_res" ] && wireless_setup_vif_failed WPA_SUPPLICANT_FAILED
                      ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.

For more information:
  https://www.shellcheck.net/wiki/SC1007 -- Remove space after = if trying to...
  https://www.shellcheck.net/wiki/SC2115 -- Use "${var:?}" to ensure this nev...
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] && [ q ] as [ p -a q...
