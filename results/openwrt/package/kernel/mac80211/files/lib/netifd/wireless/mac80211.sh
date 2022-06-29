
In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 88:
	config_add_int $MP_CONFIG_INT
                       ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	config_add_int "$MP_CONFIG_INT"


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 89:
	config_add_boolean $MP_CONFIG_BOOL
                           ^-------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	config_add_boolean "$MP_CONFIG_BOOL"


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 96:
	local __out= oifs
                   ^-- SC1007: Remove space after = if trying to assign a value (for empty string, use var='' ... ).


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 101:
		set -- $capab
                       ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		set -- "$capab"


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 104:
		[ "$(($__mask & $2))" -eq "$((${3:-$2}))" ] || continue
                      ^-----^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 105:
		__out="$__out[$1]"
                       ^-- SC1087: Use braces when expanding arrays, e.g. ${array[idx]} (or ${var}[.. to quiet).


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 113:
	local __out= oifs
                   ^-- SC1007: Remove space after = if trying to assign a value (for empty string, use var='' ... ).


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 118:
		set -- $capab
                       ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		set -- "$capab"


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 164:
					case "$(( (($channel / 4) + $chan_ofs) % 2 ))" in
                                                    ^------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                                    ^-------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 206:
			ht_cap_mask="$(($ht_cap_mask | $cap))"
                                        ^----------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                       ^--^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 209:
		cap_rx_stbc=$((($ht_cap_mask >> 8) & 3))
                                ^----------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 211:
		ht_cap_mask="$(( ($ht_cap_mask & ~(0x300)) | ($cap_rx_stbc << 8) ))"
                                  ^----------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                              ^----------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 214:
			LDPC:0x1::$ldpc \
                                  ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			LDPC:0x1::"$ldpc" \


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 215:
			GF:0x10::$greenfield \
                                 ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			GF:0x10::"$greenfield" \


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 216:
			SHORT-GI-20:0x20::$short_gi_20 \
                                          ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			SHORT-GI-20:0x20::"$short_gi_20" \


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 217:
			SHORT-GI-40:0x40::$short_gi_40 \
                                          ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			SHORT-GI-40:0x40::"$short_gi_40" \


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 218:
			TX-STBC:0x80::$tx_stbc \
                                      ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			TX-STBC:0x80::"$tx_stbc" \


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 222:
			MAX-AMSDU-7935:0x800::$max_amsdu \
                                              ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			MAX-AMSDU-7935:0x800::"$max_amsdu" \


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 223:
			DSSS_CCK-40:0x1000::$dsss_cck_40
                                            ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			DSSS_CCK-40:0x1000::"$dsss_cck_40"


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 238:
			case "$(( (($channel / 4) + $chan_ofs) % 2 ))" in
                                    ^------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                    ^-------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 239:
				1) idx=$(($channel + 2));;
                                          ^------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 240:
				0) idx=$(($channel - 2));;
                                          ^------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 246:
			case "$(( (($channel / 4) + $chan_ofs) % 4 ))" in
                                    ^------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                    ^-------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 247:
				1) idx=$(($channel + 6));;
                                          ^------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 248:
				2) idx=$(($channel + 2));;
                                          ^------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 249:
				3) idx=$(($channel - 2));;
                                          ^------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 250:
				0) idx=$(($channel - 6));;
                                          ^------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 287:
			HE*) op_class=$((132 + $vht_oper_chwidth))
                                               ^---------------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 319:
			vht_cap="$(($vht_cap | $cap))"
                                    ^------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                               ^--^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 325:
		cap_rx_stbc=$((($vht_cap >> 8) & 7))
                                ^------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 327:
		vht_cap="$(( ($vht_cap & ~(0x700)) | ($cap_rx_stbc << 8) ))"
                              ^------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                      ^----------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 330:
			RXLDPC:0x10::$rxldpc \
                                     ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			RXLDPC:0x10::"$rxldpc" \


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 331:
			SHORT-GI-80:0x20::$short_gi_80 \
                                          ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			SHORT-GI-80:0x20::"$short_gi_80" \


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 332:
			SHORT-GI-160:0x40::$short_gi_160 \
                                           ^-----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			SHORT-GI-160:0x40::"$short_gi_160" \


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 333:
			TX-STBC-2BY1:0x80::$tx_stbc_2by1 \
                                           ^-----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			TX-STBC-2BY1:0x80::"$tx_stbc_2by1" \


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 334:
			SU-BEAMFORMER:0x800::$su_beamformer \
                                             ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			SU-BEAMFORMER:0x800::"$su_beamformer" \


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 335:
			SU-BEAMFORMEE:0x1000::$su_beamformee \
                                              ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			SU-BEAMFORMEE:0x1000::"$su_beamformee" \


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 336:
			MU-BEAMFORMER:0x80000::$mu_beamformer \
                                               ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			MU-BEAMFORMER:0x80000::"$mu_beamformer" \


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 337:
			MU-BEAMFORMEE:0x100000::$mu_beamformee \
                                                ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			MU-BEAMFORMEE:0x100000::"$mu_beamformee" \


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 338:
			VHT-TXOP-PS:0x200000::$vht_txop_ps \
                                              ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			VHT-TXOP-PS:0x200000::"$vht_txop_ps" \


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 339:
			HTC-VHT:0x400000::$htc_vht \
                                          ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			HTC-VHT:0x400000::"$htc_vht" \


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 340:
			RX-ANTENNA-PATTERN:0x10000000::$rx_antenna_pattern \
                                                       ^-----------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			RX-ANTENNA-PATTERN:0x10000000::"$rx_antenna_pattern" \


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 341:
			TX-ANTENNA-PATTERN:0x20000000::$tx_antenna_pattern \
                                                       ^-----------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			TX-ANTENNA-PATTERN:0x20000000::"$tx_antenna_pattern" \


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 347:
		[ "$(($vht_cap & 0x800))" -gt 0 -a "$su_beamformer" -gt 0 ] && {
                      ^------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 348:
			cap_ant="$(( ( ($vht_cap >> 16) & 3 ) + 1 ))"
                                        ^------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 350:
			[ "$cap_ant" -gt 1 ] && vht_capab="$vht_capab[SOUNDING-DIMENSION-$cap_ant]"
                                                           ^-- SC1087: Use braces when expanding arrays, e.g. ${array[idx]} (or ${var}[.. to quiet).


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 353:
		[ "$(($vht_cap & 0x1000))" -gt 0 -a "$su_beamformee" -gt 0 ] && {
                      ^------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                 ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 354:
			cap_ant="$(( ( ($vht_cap >> 13) & 3 ) + 1 ))"
                                        ^------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 356:
			[ "$cap_ant" -gt 1 ] && vht_capab="$vht_capab[BF-ANTENNA-$cap_ant]"
                                                           ^-- SC1087: Use braces when expanding arrays, e.g. ${array[idx]} (or ${var}[.. to quiet).


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 361:
		[ "$(($vht_cap & 12))" -eq 4 -a 1 -le "$vht160" ] && \
                      ^------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                             ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 363:
		[ "$(($vht_cap & 12))" -eq 8 -a 2 -le "$vht160" ] && \
                      ^------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                             ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 365:
		[ "$vht160_hw" = 1 ] && vht_capab="$vht_capab[VHT160]"
                                                   ^-- SC1087: Use braces when expanding arrays, e.g. ${array[idx]} (or ${var}[.. to quiet).


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 366:
		[ "$vht160_hw" = 2 ] && vht_capab="$vht_capab[VHT160-80PLUS80]"
                                                   ^-- SC1087: Use braces when expanding arrays, e.g. ${array[idx]} (or ${var}[.. to quiet).


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 370:
		[ "$(($vht_cap & 3))" -ge 1 -a 7991 -le "$vht_max_mpdu" ] && \
                      ^------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                            ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 372:
		[ "$(($vht_cap & 3))" -ge 2 -a 11454 -le "$vht_max_mpdu" ] && \
                      ^------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                            ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 375:
			vht_capab="$vht_capab[MAX-MPDU-$vht_max_mpdu_hw]"
                                   ^-- SC1087: Use braces when expanding arrays, e.g. ${array[idx]} (or ${var}[.. to quiet).


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 379:
		[ "$(($vht_cap & 58720256))" -ge 8388608 -a 1 -le "$vht_max_a_mpdu_len_exp" ] && \
                      ^------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                         ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 381:
		[ "$(($vht_cap & 58720256))" -ge 16777216 -a 2 -le "$vht_max_a_mpdu_len_exp" ] && \
                      ^------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                          ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 383:
		[ "$(($vht_cap & 58720256))" -ge 25165824 -a 3 -le "$vht_max_a_mpdu_len_exp" ] && \
                      ^------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                          ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 385:
		[ "$(($vht_cap & 58720256))" -ge 33554432 -a 4 -le "$vht_max_a_mpdu_len_exp" ] && \
                      ^------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                          ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 387:
		[ "$(($vht_cap & 58720256))" -ge 41943040 -a 5 -le "$vht_max_a_mpdu_len_exp" ] && \
                      ^------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                          ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 389:
		[ "$(($vht_cap & 58720256))" -ge 50331648 -a 6 -le "$vht_max_a_mpdu_len_exp" ] && \
                      ^------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                          ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 391:
		[ "$(($vht_cap & 58720256))" -ge 58720256 -a 7 -le "$vht_max_a_mpdu_len_exp" ] && \
                      ^------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                          ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 393:
		vht_capab="$vht_capab[MAX-A-MPDU-LEN-EXP$vht_max_a_mpdu_len_exp_hw]"
                           ^-- SC1087: Use braces when expanding arrays, e.g. ${array[idx]} (or ${var}[.. to quiet).


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 397:
		[ "$(($vht_cap & 201326592))" -ge 134217728 -a 2 -le "$vht_link_adapt" ] && \
                      ^------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                            ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 399:
		[ "$(($vht_cap & 201326592))" -ge 201326592 -a 3 -le "$vht_link_adapt" ] && \
                      ^------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                            ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 402:
			vht_capab="$vht_capab[VHT-LINK-ADAPT-$vht_link_adapt_hw]"
                                   ^-- SC1087: Use braces when expanding arrays, e.g. ${array[idx]} (or ${var}[.. to quiet).


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 438:
			he_su_beamformer:${he_phy_cap:6:2}:0x80:$he_su_beamformer \
                                         ^---------------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                ^---------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			he_su_beamformer:"${he_phy_cap:6:2}":0x80:"$he_su_beamformer" \


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 439:
			he_su_beamformee:${he_phy_cap:8:2}:0x1:$he_su_beamformee \
                                         ^---------------^ SC2086: Double quote to prevent globbing and word splitting.
                                                               ^---------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			he_su_beamformee:"${he_phy_cap:8:2}":0x1:"$he_su_beamformee" \


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 440:
			he_mu_beamformer:${he_phy_cap:8:2}:0x2:$he_mu_beamformer \
                                         ^---------------^ SC2086: Double quote to prevent globbing and word splitting.
                                                               ^---------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			he_mu_beamformer:"${he_phy_cap:8:2}":0x2:"$he_mu_beamformer" \


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 441:
			he_spr_sr_control:${he_phy_cap:14:2}:0x1:$he_spr_sr_control \
                                          ^----------------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                 ^----------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			he_spr_sr_control:"${he_phy_cap:14:2}":0x1:"$he_spr_sr_control" \


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 442:
			he_twt_required:${he_mac_cap:0:2}:0x6:$he_twt_required
                                        ^---------------^ SC2086: Double quote to prevent globbing and word splitting.
                                                              ^--------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			he_twt_required:"${he_mac_cap:0:2}":0x6:"$he_twt_required"


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 484:
	radio_md5sum=$(md5sum $hostapd_conf_file | cut -d" " -f1)
                              ^----------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	radio_md5sum=$(md5sum "$hostapd_conf_file" | cut -d" " -f1)


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 485:
	echo "radio_config_id=${radio_md5sum}" >> $hostapd_conf_file
                                                  ^----------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo "radio_config_id=${radio_md5sum}" >> "$hostapd_conf_file"


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 507:
	[ "$staidx" -gt 0 -o "$start_disabled" -eq 1 ] && append hostapd_cfg "start_disabled=1" "$N"
                          ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 509:
	cat >> /var/run/hostapd-$phy.conf <<EOF
                                ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	cat >> /var/run/hostapd-"$phy".conf <<EOF


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 521:
	head -n $idx /sys/class/ieee80211/${phy}/addresses | tail -n1
                                          ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	head -n $idx /sys/class/ieee80211/"${phy}"/addresses | tail -n1


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 528:
	local ref="$(cat /sys/class/ieee80211/${phy}/macaddress)"
                                              ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local ref="$(cat /sys/class/ieee80211/"${phy}"/macaddress)"


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 529:
	local mask="$(cat /sys/class/ieee80211/${phy}/address_mask)"
                                               ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local mask="$(cat /sys/class/ieee80211/"${phy}"/address_mask)"


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 534:
		[ "$(wc -l < /sys/class/ieee80211/${phy}/addresses)" -gt $id ] && {
                                                  ^----^ SC2086: Double quote to prevent globbing and word splitting.
                                                                         ^-^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		[ "$(wc -l < /sys/class/ieee80211/"${phy}"/addresses)" -gt "$id" ] && {


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 548:
	local oIFS="$IFS"; IFS=":"; set -- $ref; IFS="$oIFS"
                                           ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local oIFS="$IFS"; IFS=":"; set -- "$ref"; IFS="$oIFS"


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 550:
	macidx=$(($id + 1))
                  ^-^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 554:
			b1=$(($b1 ^ ((($id - !($b1 & 2)) << 2)) | 0x2))
                              ^-^ SC2004: $/${} is unnecessary on arithmetic variables.
                                       ^-^ SC2004: $/${} is unnecessary on arithmetic variables.
                                               ^-^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 555:
		printf "%02x:%s:%s:%s:%s:%s" $b1 $2 $3 $4 $5 $6
                                                 ^-- SC2086: Double quote to prevent globbing and word splitting.
                                                    ^-- SC2086: Double quote to prevent globbing and word splitting.
                                                       ^-- SC2086: Double quote to prevent globbing and word splitting.
                                                          ^-- SC2086: Double quote to prevent globbing and word splitting.
                                                             ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		printf "%02x:%s:%s:%s:%s:%s" $b1 "$2" "$3" "$4" "$5" "$6"


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 560:
		printf "%s:%s:%s:%s:%s:%02x" $1 $2 $3 $4 $5 $(( 0x$6 ^ $id ))
                                             ^-- SC2086: Double quote to prevent globbing and word splitting.
                                                ^-- SC2086: Double quote to prevent globbing and word splitting.
                                                   ^-- SC2086: Double quote to prevent globbing and word splitting.
                                                      ^-- SC2086: Double quote to prevent globbing and word splitting.
                                                         ^-- SC2086: Double quote to prevent globbing and word splitting.
                                                                       ^-^ SC2004: $/${} is unnecessary on arithmetic variables.

Did you mean: 
		printf "%s:%s:%s:%s:%s:%02x" "$1" "$2" "$3" "$4" "$5" $(( 0x$6 ^ $id ))


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 564:
	off2=$(( (0x$6 + $id) / 0x100 ))
                         ^-^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 566:
		$1 $2 $3 $4 \
                ^-- SC2086: Double quote to prevent globbing and word splitting.
                   ^-- SC2086: Double quote to prevent globbing and word splitting.
                      ^-- SC2086: Double quote to prevent globbing and word splitting.
                         ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		"$1" "$2" "$3" "$4" \


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 567:
		$(( (0x$5 + $off2) % 0x100 )) \
                            ^---^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 568:
		$(( (0x$6 + $id) % 0x100 ))
                            ^-^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 572:
	[ -n "$phy" -a -d /sys/class/ieee80211/$phy ] && return 0
                    ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.
                                               ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ -n "$phy" -a -d /sys/class/ieee80211/"$phy" ] && return 0


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 578:
		for phy in $(ls /sys/class/ieee80211 2>/dev/null); do
                           ^-- SC2045: Iterating over ls output is fragile. Use globs.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 597:
	iw phy "$phy" interface add "$ifname" type "$type" $wdsflag >/dev/null 2>&1
                                                           ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	iw phy "$phy" interface add "$ifname" type "$type" "$wdsflag" >/dev/null 2>&1


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 604:
		iw phy "$phy" interface add "$ifname" type "$type" $wdsflag >/dev/null 2>&1
                                                                   ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		iw phy "$phy" interface add "$ifname" type "$type" "$wdsflag" >/dev/null 2>&1


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 611:
		case "$(iw dev $ifname info | grep "^\ttype" | cut -d' ' -f2- 2>/dev/null)" in
                               ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		case "$(iw dev "$ifname" info | grep "^\ttype" | cut -d' ' -f2- 2>/dev/null)" in


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 632:
		[ "$?" = 0 ] && {
                  ^--^ SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 635:
			iw phy "$phy" interface add "$ifname" type "$type" $wdsflag >/dev/null 2>&1
                                                                           ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			iw phy "$phy" interface add "$ifname" type "$type" "$wdsflag" >/dev/null 2>&1


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 671:
		macaddr="$(mac80211_generate_mac $phy)"
                                                 ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		macaddr="$(mac80211_generate_mac "$phy")"


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 672:
		macidx="$(($macidx + 1))"
                           ^-----^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 716:
			[ "$enable" = 0 ] || staidx="$(($staidx + 1))"
                                                        ^-----^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 731:
			[ "$auto_channel" -gt 0 ] || iw dev "$ifname" set channel "$channel" $iw_htmode
                                                                                             ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			[ "$auto_channel" -gt 0 ] || iw dev "$ifname" set channel "$channel" "$iw_htmode"


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 749:
	local spobj="$(ubus -S list | grep wpa_supplicant.${ifname})"
                                                          ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local spobj="$(ubus -S list | grep wpa_supplicant."${ifname}")"


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 752:
		ubus call wpa_supplicant.${phy} config_remove "{\"iface\":\"$ifname\"}"
                                         ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		ubus call wpa_supplicant."${phy}" config_remove "{\"iface\":\"$ifname\"}"


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 776:
	NEW_MD5_SP=$(test -e "${_config}" && md5sum ${_config})
                                                    ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	NEW_MD5_SP=$(test -e "${_config}" && md5sum "${_config}")


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 777:
	OLD_MD5_SP=$(uci -q -P /var/state get wireless._${phy}.md5_${ifname})
                                                        ^----^ SC2086: Double quote to prevent globbing and word splitting.
                                                                   ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	OLD_MD5_SP=$(uci -q -P /var/state get wireless._"${phy}".md5_"${ifname}")


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 781:
		[ "${NEW_MD5_SP}" == "${OLD_MD5_SP}" ] || ubus call $spobj reload
                                                                    ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		[ "${NEW_MD5_SP}" == "${OLD_MD5_SP}" ] || ubus call "$spobj" reload


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 783:
	uci -q -P /var/state set wireless._${phy}.md5_${ifname}="${NEW_MD5_SP}"
                                           ^----^ SC2086: Double quote to prevent globbing and word splitting.
                                                      ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	uci -q -P /var/state set wireless._"${phy}".md5_"${ifname}"="${NEW_MD5_SP}"


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 789:
	local spobj="$(ubus -S list | grep wpa_supplicant.${ifname})"
                                                          ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local spobj="$(ubus -S list | grep wpa_supplicant."${ifname}")"


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 806:
		ubus call $spobj reload
                          ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		ubus call "$spobj" reload


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 829:
					case "$(( ($channel / 4) % 2 ))" in
                                                   ^------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 868:
						ikey="$(($idx - 1)):$(prepare_key_wep "$ikey")"
                                                         ^--^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 869:
						[ $idx -eq $key ] && ikey="d:$ikey"
                                                           ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
						[ $idx -eq "$key" ] && ikey="d:$ikey"


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 889:
	iw dev "$ifname" ibss join "$ssid" $freq $iw_htmode fixed-freq $bssid \
                                           ^---^ SC2086: Double quote to prevent globbing and word splitting.
                                                                       ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	iw dev "$ifname" ibss join "$ssid" "$freq" $iw_htmode fixed-freq "$bssid" \


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 890:
		beacon-interval $beacon_int \
                                ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		beacon-interval "$beacon_int" \


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 911:
	iw dev "$ifname" mesh join "$ssid" freq $freq $iw_htmode \
                                                ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	iw dev "$ifname" mesh join "$ssid" freq "$freq" $iw_htmode \


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 913:
		beacon-interval $beacon_int
                                ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		beacon-interval "$beacon_int"


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 944:
			if [ "$wpa" -gt 0 -o "$auto_channel" -gt 0 ] || chan_is_dfs "$phy" "$channel"; then
                                          ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 945:
				mac80211_setup_supplicant $vif_enable || failed=1
                                                          ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
				mac80211_setup_supplicant "$vif_enable" || failed=1


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 947:
				mac80211_setup_mesh $vif_enable
                                                    ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
				mac80211_setup_mesh "$vif_enable"


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 956:
			if [ "$wpa" -gt 0 -o "$auto_channel" -gt 0 ]; then
                                          ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 957:
				mac80211_setup_supplicant_noctl $vif_enable || failed=1
                                                                ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
				mac80211_setup_supplicant_noctl "$vif_enable" || failed=1


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 959:
				mac80211_setup_adhoc $vif_enable
                                                     ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
				mac80211_setup_adhoc "$vif_enable"


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 963:
			mac80211_setup_supplicant $vif_enable || failed=1
                                                  ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			mac80211_setup_supplicant "$vif_enable" || failed=1


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 1009:
		[ "$service" != "none" ] && ubus call ${service} config_remove "{\"iface\":\"$wdev\"}"
                                                      ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		[ "$service" != "none" ] && ubus call "${service}" config_remove "{\"iface\":\"$wdev\"}"


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 1017:
	local primary_ap=$(uci -q -P /var/state get wireless._${phy}.aplist)
                                                              ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local primary_ap=$(uci -q -P /var/state get wireless._"${phy}".aplist)


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 1021:
	mac80211_vap_cleanup wpa_supplicant "$(uci -q -P /var/state get wireless._${phy}.splist)"
                                                                                  ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	mac80211_vap_cleanup wpa_supplicant "$(uci -q -P /var/state get wireless._"${phy}".splist)"


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 1022:
	mac80211_vap_cleanup none "$(uci -q -P /var/state get wireless._${phy}.umlist)"
                                                                        ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	mac80211_vap_cleanup none "$(uci -q -P /var/state get wireless._"${phy}".umlist)"


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 1052:
	[ -z "$(uci -q -P /var/state show wireless._${phy})" ] && uci -q -P /var/state set wireless._${phy}=phy
                                                    ^----^ SC2086: Double quote to prevent globbing and word splitting.
                                                                                                     ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ -z "$(uci -q -P /var/state show wireless._"${phy}")" ] && uci -q -P /var/state set wireless._"${phy}"=phy


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 1054:
	OLDAPLIST=$(uci -q -P /var/state get wireless._${phy}.aplist)
                                                       ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	OLDAPLIST=$(uci -q -P /var/state get wireless._"${phy}".aplist)


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 1055:
	OLDSPLIST=$(uci -q -P /var/state get wireless._${phy}.splist)
                                                       ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	OLDSPLIST=$(uci -q -P /var/state get wireless._"${phy}".splist)


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 1056:
	OLDUMLIST=$(uci -q -P /var/state get wireless._${phy}.umlist)
                                                       ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	OLDUMLIST=$(uci -q -P /var/state get wireless._"${phy}".umlist)


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 1093:
		for file in /sys/kernel/debug/ieee80211/$phy/ath9k*/chanbw /sys/kernel/debug/ieee80211/$phy/ath5k/bwmode; do
                                                        ^--^ SC2231: Quote expansions in this for loop glob to prevent wordsplitting, e.g. "$dir"/*.txt .


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 1107:
	iw phy "$phy" set antenna_gain $antenna_gain >/dev/null 2>&1
                                       ^-----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	iw phy "$phy" set antenna_gain "$antenna_gain" >/dev/null 2>&1


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 1134:
	NEW_MD5=$(test -e "${hostapd_conf_file}" && md5sum ${hostapd_conf_file})
                                                           ^------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	NEW_MD5=$(test -e "${hostapd_conf_file}" && md5sum "${hostapd_conf_file}")


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 1135:
	OLD_MD5=$(uci -q -P /var/state get wireless._${phy}.md5)
                                                     ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	OLD_MD5=$(uci -q -P /var/state get wireless._"${phy}".md5)


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 1144:
		if [ -n "$(ubus list | grep hostapd.$primary_ap)" ]; then
                     ^-- SC2143: Use grep -q instead of comparing output with [ -n .. ].


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 1151:
					mac80211_vap_cleanup wpa_supplicant "$(uci -q -P /var/state get wireless._${phy}.splist)"
                                                                                                                  ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
					mac80211_vap_cleanup wpa_supplicant "$(uci -q -P /var/state get wireless._"${phy}".splist)"


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 1152:
					mac80211_vap_cleanup none "$(uci -q -P /var/state get wireless._${phy}.umlist)"
                                                                                                        ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
					mac80211_vap_cleanup none "$(uci -q -P /var/state get wireless._"${phy}".umlist)"


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 1164:
			[ "$ret" != 0 -o -z "$hostapd_res" ] && {
                                      ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 1171:
	uci -q -P /var/state set wireless._${phy}.aplist="${NEWAPLIST}"
                                           ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	uci -q -P /var/state set wireless._"${phy}".aplist="${NEWAPLIST}"


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 1172:
	uci -q -P /var/state set wireless._${phy}.md5="${NEW_MD5}"
                                           ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	uci -q -P /var/state set wireless._"${phy}".md5="${NEW_MD5}"


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 1182:
	uci -q -P /var/state set wireless._${phy}.splist="${NEWSPLIST}"
                                           ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	uci -q -P /var/state set wireless._"${phy}".splist="${NEWSPLIST}"


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 1183:
	uci -q -P /var/state set wireless._${phy}.umlist="${NEWUMLIST}"
                                           ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	uci -q -P /var/state set wireless._"${phy}".umlist="${NEWUMLIST}"


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 1203:
		ls "/sys/class/ieee80211/${phy}/device" 2>/dev/null | grep net: | sed -e 's,net:,,g'
                ^-- SC2010: Don't use ls | grep. Use a glob or a for loop with a condition to allow non-alphanumeric filenames.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 1226:
	uci -q -P /var/state revert wireless._${phy}
                                              ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	uci -q -P /var/state revert wireless._"${phy}"

For more information:
  https://www.shellcheck.net/wiki/SC1087 -- Use braces when expanding arrays,...
  https://www.shellcheck.net/wiki/SC2045 -- Iterating over ls output is fragi...
  https://www.shellcheck.net/wiki/SC1007 -- Remove space after = if trying to...
