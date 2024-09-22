
In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 93:
	config_add_int $MP_CONFIG_INT
                       ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	config_add_int "$MP_CONFIG_INT"


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 94:
	config_add_boolean $MP_CONFIG_BOOL
                           ^-------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	config_add_boolean "$MP_CONFIG_BOOL"


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 101:
	local __out= oifs
                   ^-- SC1007: Remove space after = if trying to assign a value (for empty string, use var='' ... ).


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 106:
		set -- $capab
                       ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		set -- "$capab"


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 109:
		[ "$(($__mask & $2))" -eq "$((${3:-$2}))" ] || continue
                      ^-----^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 110:
		__out="$__out[$1]"
                       ^-- SC1087: Use braces when expanding arrays, e.g. ${array[idx]} (or ${var}[.. to quiet).


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 118:
	local __out= oifs
                   ^-- SC1007: Remove space after = if trying to assign a value (for empty string, use var='' ... ).


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 123:
		set -- $capab
                       ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		set -- "$capab"


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 169:
					case "$(( (($channel / 4) + $chan_ofs) % 2 ))" in
                                                    ^------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                                    ^-------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 211:
			ht_cap_mask="$(($ht_cap_mask | $cap))"
                                        ^----------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                       ^--^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 214:
		cap_rx_stbc=$((($ht_cap_mask >> 8) & 3))
                                ^----------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 216:
		ht_cap_mask="$(( ($ht_cap_mask & ~(0x300)) | ($cap_rx_stbc << 8) ))"
                                  ^----------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                              ^----------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 219:
			LDPC:0x1::$ldpc \
                                  ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			LDPC:0x1::"$ldpc" \


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 220:
			GF:0x10::$greenfield \
                                 ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			GF:0x10::"$greenfield" \


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 221:
			SHORT-GI-20:0x20::$short_gi_20 \
                                          ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			SHORT-GI-20:0x20::"$short_gi_20" \


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 222:
			SHORT-GI-40:0x40::$short_gi_40 \
                                          ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			SHORT-GI-40:0x40::"$short_gi_40" \


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 223:
			TX-STBC:0x80::$tx_stbc \
                                      ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			TX-STBC:0x80::"$tx_stbc" \


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 227:
			MAX-AMSDU-7935:0x800::$max_amsdu \
                                              ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			MAX-AMSDU-7935:0x800::"$max_amsdu" \


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 228:
			DSSS_CCK-40:0x1000::$dsss_cck_40
                                            ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			DSSS_CCK-40:0x1000::"$dsss_cck_40"


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 243:
			case "$(( (($channel / 4) + $chan_ofs) % 2 ))" in
                                    ^------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                    ^-------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 244:
				1) idx=$(($channel + 2));;
                                          ^------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 245:
				0) idx=$(($channel - 2));;
                                          ^------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 251:
			case "$(( (($channel / 4) + $chan_ofs) % 4 ))" in
                                    ^------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                    ^-------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 252:
				1) idx=$(($channel + 6));;
                                          ^------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 253:
				2) idx=$(($channel + 2));;
                                          ^------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 254:
				3) idx=$(($channel - 2));;
                                          ^------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 255:
				0) idx=$(($channel - 6));;
                                          ^------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 293:
			HE*) op_class=$((132 + $vht_oper_chwidth))
                                               ^---------------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 325:
			vht_cap="$(($vht_cap | $cap))"
                                    ^------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                               ^--^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 331:
		cap_rx_stbc=$((($vht_cap >> 8) & 7))
                                ^------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 333:
		vht_cap="$(( ($vht_cap & ~(0x700)) | ($cap_rx_stbc << 8) ))"
                              ^------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                      ^----------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 341:
			RXLDPC:0x10::$rxldpc \
                                     ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			RXLDPC:0x10::"$rxldpc" \


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 342:
			SHORT-GI-80:0x20::$short_gi_80 \
                                          ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			SHORT-GI-80:0x20::"$short_gi_80" \


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 344:
			TX-STBC-2BY1:0x80::$tx_stbc_2by1 \
                                           ^-----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			TX-STBC-2BY1:0x80::"$tx_stbc_2by1" \


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 345:
			SU-BEAMFORMER:0x800::$su_beamformer \
                                             ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			SU-BEAMFORMER:0x800::"$su_beamformer" \


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 346:
			SU-BEAMFORMEE:0x1000::$su_beamformee \
                                              ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			SU-BEAMFORMEE:0x1000::"$su_beamformee" \


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 347:
			MU-BEAMFORMER:0x80000::$mu_beamformer \
                                               ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			MU-BEAMFORMER:0x80000::"$mu_beamformer" \


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 348:
			MU-BEAMFORMEE:0x100000::$mu_beamformee \
                                                ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			MU-BEAMFORMEE:0x100000::"$mu_beamformee" \


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 349:
			VHT-TXOP-PS:0x200000::$vht_txop_ps \
                                              ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			VHT-TXOP-PS:0x200000::"$vht_txop_ps" \


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 350:
			HTC-VHT:0x400000::$htc_vht \
                                          ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			HTC-VHT:0x400000::"$htc_vht" \


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 351:
			RX-ANTENNA-PATTERN:0x10000000::$rx_antenna_pattern \
                                                       ^-----------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			RX-ANTENNA-PATTERN:0x10000000::"$rx_antenna_pattern" \


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 352:
			TX-ANTENNA-PATTERN:0x20000000::$tx_antenna_pattern \
                                                       ^-----------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			TX-ANTENNA-PATTERN:0x20000000::"$tx_antenna_pattern" \


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 358:
		[ "$(($vht_cap & 0x800))" -gt 0 -a "$su_beamformer" -gt 0 ] && {
                      ^------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 359:
			cap_ant="$(( ( ($vht_cap >> 16) & 3 ) + 1 ))"
                                        ^------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 361:
			[ "$cap_ant" -gt 1 ] && vht_capab="$vht_capab[SOUNDING-DIMENSION-$cap_ant]"
                                                           ^-- SC1087: Use braces when expanding arrays, e.g. ${array[idx]} (or ${var}[.. to quiet).


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 364:
		[ "$(($vht_cap & 0x1000))" -gt 0 -a "$su_beamformee" -gt 0 ] && {
                      ^------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                 ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 365:
			cap_ant="$(( ( ($vht_cap >> 13) & 3 ) + 1 ))"
                                        ^------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 367:
			[ "$cap_ant" -gt 1 ] && vht_capab="$vht_capab[BF-ANTENNA-$cap_ant]"
                                                           ^-- SC1087: Use braces when expanding arrays, e.g. ${array[idx]} (or ${var}[.. to quiet).


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 372:
		[ "$(($vht_cap & 12))" -eq 4 -a 1 -le "$vht160" ] && \
                      ^------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                             ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 374:
		[ "$(($vht_cap & 12))" -eq 8 -a 2 -le "$vht160" ] && \
                      ^------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                             ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 376:
		[ "$vht160_hw" = 1 ] && vht_capab="$vht_capab[VHT160]"
                                                   ^-- SC1087: Use braces when expanding arrays, e.g. ${array[idx]} (or ${var}[.. to quiet).


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 377:
		[ "$vht160_hw" = 2 ] && vht_capab="$vht_capab[VHT160-80PLUS80]"
                                                   ^-- SC1087: Use braces when expanding arrays, e.g. ${array[idx]} (or ${var}[.. to quiet).


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 381:
		[ "$(($vht_cap & 3))" -ge 1 -a 7991 -le "$vht_max_mpdu" ] && \
                      ^------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                            ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 383:
		[ "$(($vht_cap & 3))" -ge 2 -a 11454 -le "$vht_max_mpdu" ] && \
                      ^------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                            ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 386:
			vht_capab="$vht_capab[MAX-MPDU-$vht_max_mpdu_hw]"
                                   ^-- SC1087: Use braces when expanding arrays, e.g. ${array[idx]} (or ${var}[.. to quiet).


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 390:
		[ "$(($vht_cap & 58720256))" -ge 8388608 -a 1 -le "$vht_max_a_mpdu_len_exp" ] && \
                      ^------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                         ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 392:
		[ "$(($vht_cap & 58720256))" -ge 16777216 -a 2 -le "$vht_max_a_mpdu_len_exp" ] && \
                      ^------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                          ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 394:
		[ "$(($vht_cap & 58720256))" -ge 25165824 -a 3 -le "$vht_max_a_mpdu_len_exp" ] && \
                      ^------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                          ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 396:
		[ "$(($vht_cap & 58720256))" -ge 33554432 -a 4 -le "$vht_max_a_mpdu_len_exp" ] && \
                      ^------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                          ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 398:
		[ "$(($vht_cap & 58720256))" -ge 41943040 -a 5 -le "$vht_max_a_mpdu_len_exp" ] && \
                      ^------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                          ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 400:
		[ "$(($vht_cap & 58720256))" -ge 50331648 -a 6 -le "$vht_max_a_mpdu_len_exp" ] && \
                      ^------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                          ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 402:
		[ "$(($vht_cap & 58720256))" -ge 58720256 -a 7 -le "$vht_max_a_mpdu_len_exp" ] && \
                      ^------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                          ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 404:
		vht_capab="$vht_capab[MAX-A-MPDU-LEN-EXP$vht_max_a_mpdu_len_exp_hw]"
                           ^-- SC1087: Use braces when expanding arrays, e.g. ${array[idx]} (or ${var}[.. to quiet).


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 408:
		[ "$(($vht_cap & 201326592))" -ge 134217728 -a 2 -le "$vht_link_adapt" ] && \
                      ^------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                            ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 410:
		[ "$(($vht_cap & 201326592))" -ge 201326592 -a 3 -le "$vht_link_adapt" ] && \
                      ^------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                            ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 413:
			vht_capab="$vht_capab[VHT-LINK-ADAPT-$vht_link_adapt_hw]"
                                   ^-- SC1087: Use braces when expanding arrays, e.g. ${array[idx]} (or ${var}[.. to quiet).


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 448:
			he_su_beamformer:${he_phy_cap:6:2}:0x80:$he_su_beamformer \
                                         ^---------------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                ^---------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			he_su_beamformer:"${he_phy_cap:6:2}":0x80:"$he_su_beamformer" \


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 449:
			he_su_beamformee:${he_phy_cap:8:2}:0x1:$he_su_beamformee \
                                         ^---------------^ SC2086: Double quote to prevent globbing and word splitting.
                                                               ^---------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			he_su_beamformee:"${he_phy_cap:8:2}":0x1:"$he_su_beamformee" \


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 450:
			he_mu_beamformer:${he_phy_cap:8:2}:0x2:$he_mu_beamformer \
                                         ^---------------^ SC2086: Double quote to prevent globbing and word splitting.
                                                               ^---------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			he_mu_beamformer:"${he_phy_cap:8:2}":0x2:"$he_mu_beamformer" \


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 451:
			he_spr_psr_enabled:${he_phy_cap:14:2}:0x1:$he_spr_psr_enabled \
                                           ^----------------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                  ^-----------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			he_spr_psr_enabled:"${he_phy_cap:14:2}":0x1:"$he_spr_psr_enabled" \


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 452:
			he_twt_required:${he_mac_cap:0:2}:0x6:$he_twt_required
                                        ^---------------^ SC2086: Double quote to prevent globbing and word splitting.
                                                              ^--------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			he_twt_required:"${he_mac_cap:0:2}":0x6:"$he_twt_required"


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 528:
	[ "$staidx" -gt 0 -o "$start_disabled" -eq 1 ] && append hostapd_cfg "start_disabled=1" "$N"
                          ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 530:
	cat >> /var/run/hostapd-$phy.conf <<EOF
                                ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	cat >> /var/run/hostapd-"$phy".conf <<EOF


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 543:
	head -n $idx /sys/class/ieee80211/${phy}/addresses | tail -n1
                                          ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	head -n $idx /sys/class/ieee80211/"${phy}"/addresses | tail -n1


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 550:
	wdev_tool "$phy" get_macaddr id=$id num_global=$num_global_macaddr mbssid=${multiple_bssid:-0}
                                        ^-^ SC2086: Double quote to prevent globbing and word splitting.
                                                       ^-----------------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                                  ^------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	wdev_tool "$phy" get_macaddr id="$id" num_global="$num_global_macaddr" mbssid="${multiple_bssid:-0}"


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 559:
		local key="$2"
                      ^-^ SC2030: Modification of key is local (to subshell caused by (..) group).


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 582:
	[ -z "$new_phy" -o "$new_phy" = "$phy" ] && return
                        ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 588:
	local phy="$1"
              ^-^ SC2030: Modification of phy is local (to subshell caused by (..) group).


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 606:
	[ -n "$phy" ] && {
              ^--^ SC2031: phy was modified in a subshell. That change might be lost.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 607:
		rename_board_phy_by_name "$phy"
                                          ^--^ SC2031: phy was modified in a subshell. That change might be lost.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 608:
		[ -d /sys/class/ieee80211/$phy ] && return 0
                                          ^--^ SC2031: phy was modified in a subshell. That change might be lost.
                                          ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		[ -d /sys/class/ieee80211/"$phy" ] && return 0


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 618:
		for phy in $(ls /sys/class/ieee80211 2>/dev/null); do
                           ^-- SC2045: Iterating over ls output is fragile. Use globs.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 663:
		macaddr="$(mac80211_generate_mac $phy)"
                                                 ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		macaddr="$(mac80211_generate_mac "$phy")"


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 664:
		macidx="$(($macidx + 1))"
                           ^-----^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 723:
					case "$(( ($channel / 4) % 2 ))" in
                                                   ^------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 748:
mac80211_setup_adhoc() {
^-- SC2120: mac80211_setup_adhoc references arguments, but none are ever passed.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 762:
		case "$key" in
                      ^--^ SC2031: key was modified in a subshell. That change might be lost.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 769:
						ikey="$(($idx - 1)):$(prepare_key_wep "$ikey")"
                                                         ^--^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 770:
						[ $idx -eq $key ] && ikey="d:$ikey"
                                                           ^--^ SC2031: key was modified in a subshell. That change might be lost.
                                                           ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
						[ $idx -eq "$key" ] && ikey="d:$ikey"


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 776:
				append keyspec "d:0:$(prepare_key_wep "$key")"
                                                                       ^--^ SC2031: key was modified in a subshell. That change might be lost.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 914:
	[ "$ret" != 0 -o -z "$supplicant_res" ] && wireless_setup_vif_failed WPA_SUPPLICANT_FAILED
                      ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 929:
	[ "$ret" != 0 -o -z "$hostapd_res" ] && {
                      ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 945:
mac80211_setup_supplicant() {
^-- SC2120: mac80211_setup_supplicant references arguments, but none are ever passed.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 977:
			json_get_vars $MP_CONFIG_INT $MP_CONFIG_BOOL $MP_CONFIG_STRING
                                      ^------------^ SC2086: Double quote to prevent globbing and word splitting.
                                                     ^-------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			json_get_vars "$MP_CONFIG_INT" "$MP_CONFIG_BOOL" $MP_CONFIG_STRING


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 981:
				mac80211_setup_supplicant || failed=1
                                ^-----------------------^ SC2119: Use mac80211_setup_supplicant "$@" if function's $1 should mean script's $1.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 988:
			if [ "$wpa" -gt 0 -o "$auto_channel" -gt 0 ]; then
                                          ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 989:
				mac80211_setup_supplicant || failed=1
                                ^-----------------------^ SC2119: Use mac80211_setup_supplicant "$@" if function's $1 should mean script's $1.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 991:
				mac80211_setup_adhoc
                                ^------------------^ SC2119: Use mac80211_setup_adhoc "$@" if function's $1 should mean script's $1.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 995:
			mac80211_setup_supplicant || failed=1
                        ^-----------------------^ SC2119: Use mac80211_setup_supplicant "$@" if function's $1 should mean script's $1.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 1100:
		for file in /sys/kernel/debug/ieee80211/$phy/ath9k*/chanbw /sys/kernel/debug/ieee80211/$phy/ath5k/bwmode; do
                                                        ^--^ SC2231: Quote expansions in this for loop glob to prevent wordsplitting, e.g. "$dir"/*.txt .


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 1112:
	[ "$rxantenna" = "$prev_rxantenna" -a "$txantenna" = "$prev_txantenna" ] || mac80211_reset_config "$phy"
                                           ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/config/wifi-scripts/files/lib/netifd/wireless/mac80211.sh line 1169:
		ls "/sys/class/ieee80211/${phy}/device" 2>/dev/null | grep net: | sed -e 's,net:,,g'
                ^-- SC2010: Don't use ls | grep. Use a glob or a for loop with a condition to allow non-alphanumeric filenames.

For more information:
  https://www.shellcheck.net/wiki/SC1087 -- Use braces when expanding arrays,...
  https://www.shellcheck.net/wiki/SC2045 -- Iterating over ls output is fragi...
  https://www.shellcheck.net/wiki/SC1007 -- Remove space after = if trying to...
