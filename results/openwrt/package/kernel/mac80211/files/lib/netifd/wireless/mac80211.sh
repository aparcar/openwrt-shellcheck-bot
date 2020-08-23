
In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 74:
	config_add_int $MP_CONFIG_INT
                       ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	config_add_int "$MP_CONFIG_INT"


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 75:
	config_add_boolean $MP_CONFIG_BOOL
                           ^-------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	config_add_boolean "$MP_CONFIG_BOOL"


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 82:
	local __out= oifs
                   ^-- SC1007: Remove space after = if trying to assign a value (for empty string, use var='' ... ).


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 87:
		set -- $capab
                       ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		set -- "$capab"


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 90:
		[ "$(($__mask & $2))" -eq "$((${3:-$2}))" ] || continue
                      ^-----^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 91:
		__out="$__out[$1]"
                       ^-- SC1087: Use braces when expanding arrays, e.g. ${array[idx]} (or ${var}[.. to quiet).


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 128:
					case "$(( ($channel / 4) % 2 ))" in
                                                   ^------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 170:
			ht_cap_mask="$(($ht_cap_mask | $cap))"
                                        ^----------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                       ^--^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 173:
		cap_rx_stbc=$((($ht_cap_mask >> 8) & 3))
                                ^----------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 175:
		ht_cap_mask="$(( ($ht_cap_mask & ~(0x300)) | ($cap_rx_stbc << 8) ))"
                                  ^----------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                              ^----------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 178:
			LDPC:0x1::$ldpc \
                                  ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			LDPC:0x1::"$ldpc" \


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 179:
			GF:0x10::$greenfield \
                                 ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			GF:0x10::"$greenfield" \


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 180:
			SHORT-GI-20:0x20::$short_gi_20 \
                                          ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			SHORT-GI-20:0x20::"$short_gi_20" \


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 181:
			SHORT-GI-40:0x40::$short_gi_40 \
                                          ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			SHORT-GI-40:0x40::"$short_gi_40" \


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 182:
			TX-STBC:0x80::$tx_stbc \
                                      ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			TX-STBC:0x80::"$tx_stbc" \


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 186:
			MAX-AMSDU-7935:0x800::$max_amsdu \
                                              ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			MAX-AMSDU-7935:0x800::"$max_amsdu" \


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 187:
			DSSS_CCK-40:0x1000::$dsss_cck_40
                                            ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			DSSS_CCK-40:0x1000::"$dsss_cck_40"


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 199:
			case "$(( ($channel / 4) % 2 ))" in
                                   ^------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 200:
				1) idx=$(($channel + 2));;
                                          ^------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 201:
				0) idx=$(($channel - 2));;
                                          ^------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 208:
			case "$(( ($channel / 4) % 4 ))" in
                                   ^------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 209:
				1) idx=$(($channel + 6));;
                                          ^------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 210:
				2) idx=$(($channel + 2));;
                                          ^------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 211:
				3) idx=$(($channel - 2));;
                                          ^------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 212:
				0) idx=$(($channel - 6));;
                                          ^------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 253:
			vht_cap="$(($vht_cap | $cap))"
                                    ^------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                               ^--^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 256:
		cap_rx_stbc=$((($vht_cap >> 8) & 7))
                                ^------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 258:
		vht_cap="$(( ($vht_cap & ~(0x700)) | ($cap_rx_stbc << 8) ))"
                              ^------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                      ^----------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 261:
			RXLDPC:0x10::$rxldpc \
                                     ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			RXLDPC:0x10::"$rxldpc" \


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 262:
			SHORT-GI-80:0x20::$short_gi_80 \
                                          ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			SHORT-GI-80:0x20::"$short_gi_80" \


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 263:
			SHORT-GI-160:0x40::$short_gi_160 \
                                           ^-----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			SHORT-GI-160:0x40::"$short_gi_160" \


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 264:
			TX-STBC-2BY1:0x80::$tx_stbc_2by1 \
                                           ^-----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			TX-STBC-2BY1:0x80::"$tx_stbc_2by1" \


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 265:
			SU-BEAMFORMER:0x800::$su_beamformer \
                                             ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			SU-BEAMFORMER:0x800::"$su_beamformer" \


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 266:
			SU-BEAMFORMEE:0x1000::$su_beamformee \
                                              ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			SU-BEAMFORMEE:0x1000::"$su_beamformee" \


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 267:
			MU-BEAMFORMER:0x80000::$mu_beamformer \
                                               ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			MU-BEAMFORMER:0x80000::"$mu_beamformer" \


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 268:
			MU-BEAMFORMEE:0x100000::$mu_beamformee \
                                                ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			MU-BEAMFORMEE:0x100000::"$mu_beamformee" \


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 269:
			VHT-TXOP-PS:0x200000::$vht_txop_ps \
                                              ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			VHT-TXOP-PS:0x200000::"$vht_txop_ps" \


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 270:
			HTC-VHT:0x400000::$htc_vht \
                                          ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			HTC-VHT:0x400000::"$htc_vht" \


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 271:
			RX-ANTENNA-PATTERN:0x10000000::$rx_antenna_pattern \
                                                       ^-----------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			RX-ANTENNA-PATTERN:0x10000000::"$rx_antenna_pattern" \


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 272:
			TX-ANTENNA-PATTERN:0x20000000::$tx_antenna_pattern \
                                                       ^-----------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			TX-ANTENNA-PATTERN:0x20000000::"$tx_antenna_pattern" \


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 280:
		[ "$(($vht_cap & 12))" -eq 4 -a 1 -le "$vht160" ] && \
                      ^------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                             ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 282:
		[ "$(($vht_cap & 12))" -eq 8 -a 2 -le "$vht160" ] && \
                      ^------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                             ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 284:
		[ "$vht160_hw" = 1 ] && vht_capab="$vht_capab[VHT160]"
                                                   ^-- SC1087: Use braces when expanding arrays, e.g. ${array[idx]} (or ${var}[.. to quiet).


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 285:
		[ "$vht160_hw" = 2 ] && vht_capab="$vht_capab[VHT160-80PLUS80]"
                                                   ^-- SC1087: Use braces when expanding arrays, e.g. ${array[idx]} (or ${var}[.. to quiet).


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 289:
		[ "$(($vht_cap & 3))" -ge 1 -a 7991 -le "$vht_max_mpdu" ] && \
                      ^------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                            ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 291:
		[ "$(($vht_cap & 3))" -ge 2 -a 11454 -le "$vht_max_mpdu" ] && \
                      ^------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                            ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 294:
			vht_capab="$vht_capab[MAX-MPDU-$vht_max_mpdu_hw]"
                                   ^-- SC1087: Use braces when expanding arrays, e.g. ${array[idx]} (or ${var}[.. to quiet).


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 298:
		[ "$(($vht_cap & 58720256))" -ge 8388608 -a 1 -le "$vht_max_a_mpdu_len_exp" ] && \
                      ^------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                         ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 300:
		[ "$(($vht_cap & 58720256))" -ge 16777216 -a 2 -le "$vht_max_a_mpdu_len_exp" ] && \
                      ^------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                          ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 302:
		[ "$(($vht_cap & 58720256))" -ge 25165824 -a 3 -le "$vht_max_a_mpdu_len_exp" ] && \
                      ^------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                          ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 304:
		[ "$(($vht_cap & 58720256))" -ge 33554432 -a 4 -le "$vht_max_a_mpdu_len_exp" ] && \
                      ^------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                          ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 306:
		[ "$(($vht_cap & 58720256))" -ge 41943040 -a 5 -le "$vht_max_a_mpdu_len_exp" ] && \
                      ^------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                          ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 308:
		[ "$(($vht_cap & 58720256))" -ge 50331648 -a 6 -le "$vht_max_a_mpdu_len_exp" ] && \
                      ^------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                          ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 310:
		[ "$(($vht_cap & 58720256))" -ge 58720256 -a 7 -le "$vht_max_a_mpdu_len_exp" ] && \
                      ^------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                          ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 312:
		vht_capab="$vht_capab[MAX-A-MPDU-LEN-EXP$vht_max_a_mpdu_len_exp_hw]"
                           ^-- SC1087: Use braces when expanding arrays, e.g. ${array[idx]} (or ${var}[.. to quiet).


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 316:
		[ "$(($vht_cap & 201326592))" -ge 134217728 -a 2 -le "$vht_link_adapt" ] && \
                      ^------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                            ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 318:
		[ "$(($vht_cap & 201326592))" -ge 201326592 -a 3 -le "$vht_link_adapt" ] && \
                      ^------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                            ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 321:
			vht_capab="$vht_capab[VHT-LINK-ADAPT-$vht_link_adapt_hw]"
                                   ^-- SC1087: Use braces when expanding arrays, e.g. ${array[idx]} (or ${var}[.. to quiet).


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 336:
	radio_md5sum=$(md5sum $hostapd_conf_file | cut -d" " -f1)
                              ^----------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	radio_md5sum=$(md5sum "$hostapd_conf_file" | cut -d" " -f1)


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 337:
	echo "radio_config_id=${radio_md5sum}" >> $hostapd_conf_file
                                                  ^----------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo "radio_config_id=${radio_md5sum}" >> "$hostapd_conf_file"


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 359:
	[ "$staidx" -gt 0 -o "$start_disabled" -eq 1 ] && append hostapd_cfg "start_disabled=1" "$N"
                          ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 361:
	cat >> /var/run/hostapd-$phy.conf <<EOF
                                ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	cat >> /var/run/hostapd-"$phy".conf <<EOF


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 373:
	head -n $idx /sys/class/ieee80211/${phy}/addresses | tail -n1
                                          ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	head -n $idx /sys/class/ieee80211/"${phy}"/addresses | tail -n1


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 380:
	local ref="$(cat /sys/class/ieee80211/${phy}/macaddress)"
                                              ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local ref="$(cat /sys/class/ieee80211/"${phy}"/macaddress)"


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 381:
	local mask="$(cat /sys/class/ieee80211/${phy}/address_mask)"
                                               ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local mask="$(cat /sys/class/ieee80211/"${phy}"/address_mask)"


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 386:
		[ "$(wc -l < /sys/class/ieee80211/${phy}/addresses)" -gt 1 ] && {
                                                  ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		[ "$(wc -l < /sys/class/ieee80211/"${phy}"/addresses)" -gt 1 ] && {


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 400:
	local oIFS="$IFS"; IFS=":"; set -- $ref; IFS="$oIFS"
                                           ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local oIFS="$IFS"; IFS=":"; set -- "$ref"; IFS="$oIFS"


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 402:
	macidx=$(($id + 1))
                  ^-^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 406:
			b1=$(($b1 ^ ((($id - !($b1 & 2)) << 2) | 0x2)))
                              ^-^ SC2004: $/${} is unnecessary on arithmetic variables.
                                       ^-^ SC2004: $/${} is unnecessary on arithmetic variables.
                                               ^-^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 407:
		printf "%02x:%s:%s:%s:%s:%s" $b1 $2 $3 $4 $5 $6
                                                 ^-- SC2086: Double quote to prevent globbing and word splitting.
                                                    ^-- SC2086: Double quote to prevent globbing and word splitting.
                                                       ^-- SC2086: Double quote to prevent globbing and word splitting.
                                                          ^-- SC2086: Double quote to prevent globbing and word splitting.
                                                             ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		printf "%02x:%s:%s:%s:%s:%s" $b1 "$2" "$3" "$4" "$5" "$6"


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 412:
		printf "%s:%s:%s:%s:%s:%02x" $1 $2 $3 $4 $5 $(( 0x$6 ^ $id ))
                                             ^-- SC2086: Double quote to prevent globbing and word splitting.
                                                ^-- SC2086: Double quote to prevent globbing and word splitting.
                                                   ^-- SC2086: Double quote to prevent globbing and word splitting.
                                                      ^-- SC2086: Double quote to prevent globbing and word splitting.
                                                         ^-- SC2086: Double quote to prevent globbing and word splitting.
                                                                       ^-^ SC2004: $/${} is unnecessary on arithmetic variables.

Did you mean: 
		printf "%s:%s:%s:%s:%s:%02x" "$1" "$2" "$3" "$4" "$5" $(( 0x$6 ^ $id ))


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 416:
	off2=$(( (0x$6 + $id) / 0x100 ))
                         ^-^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 418:
		$1 $2 $3 $4 \
                ^-- SC2086: Double quote to prevent globbing and word splitting.
                   ^-- SC2086: Double quote to prevent globbing and word splitting.
                      ^-- SC2086: Double quote to prevent globbing and word splitting.
                         ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		"$1" "$2" "$3" "$4" \


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 419:
		$(( (0x$5 + $off2) % 0x100 )) \
                            ^---^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 420:
		$(( (0x$6 + $id) % 0x100 ))
                            ^-^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 424:
	[ -n "$phy" -a -d /sys/class/ieee80211/$phy ] && return 0
                    ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.
                                               ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ -n "$phy" -a -d /sys/class/ieee80211/"$phy" ] && return 0


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 430:
		for phy in $(ls /sys/class/ieee80211 2>/dev/null); do
                           ^-- SC2045: Iterating over ls output is fragile. Use globs.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 449:
	iw phy "$phy" interface add "$ifname" type "$type" $wdsflag >/dev/null 2>&1
                                                           ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	iw phy "$phy" interface add "$ifname" type "$type" "$wdsflag" >/dev/null 2>&1


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 456:
		iw phy "$phy" interface add "$ifname" type "$type" $wdsflag >/dev/null 2>&1
                                                                   ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		iw phy "$phy" interface add "$ifname" type "$type" "$wdsflag" >/dev/null 2>&1


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 463:
		case "$(iw dev $ifname info | grep "^\ttype" | cut -d' ' -f2- 2>/dev/null)" in
                               ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		case "$(iw dev "$ifname" info | grep "^\ttype" | cut -d' ' -f2- 2>/dev/null)" in


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 484:
		[ "$?" = 0 ] && {
                  ^--^ SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 487:
			iw phy "$phy" interface add "$ifname" type "$type" $wdsflag >/dev/null 2>&1
                                                                           ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			iw phy "$phy" interface add "$ifname" type "$type" "$wdsflag" >/dev/null 2>&1


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 523:
		macaddr="$(mac80211_generate_mac $phy)"
                                                 ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		macaddr="$(mac80211_generate_mac "$phy")"


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 524:
		macidx="$(($macidx + 1))"
                           ^-----^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 568:
			[ "$enable" = 0 ] || staidx="$(($staidx + 1))"
                                                        ^-----^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 583:
			[ "$auto_channel" -gt 0 ] || iw dev "$ifname" set channel "$channel" $iw_htmode
                                                                                             ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			[ "$auto_channel" -gt 0 ] || iw dev "$ifname" set channel "$channel" "$iw_htmode"


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 601:
	local spobj="$(ubus -S list | grep wpa_supplicant.${ifname})"
                                                          ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local spobj="$(ubus -S list | grep wpa_supplicant."${ifname}")"


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 604:
		ubus call wpa_supplicant.${phy} config_del "{\"iface\":\"$ifname\"}"
                                         ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		ubus call wpa_supplicant."${phy}" config_del "{\"iface\":\"$ifname\"}"


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 628:
	NEW_MD5_SP=$(test -e "${_config}" && md5sum ${_config})
                                                    ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	NEW_MD5_SP=$(test -e "${_config}" && md5sum "${_config}")


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 629:
	OLD_MD5_SP=$(uci -q -P /var/state get wireless._${phy}.md5_${ifname})
                                                        ^----^ SC2086: Double quote to prevent globbing and word splitting.
                                                                   ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	OLD_MD5_SP=$(uci -q -P /var/state get wireless._"${phy}".md5_"${ifname}")


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 633:
		[ "${NEW_MD5_SP}" == "${OLD_MD5_SP}" ] || ubus call $spobj reload
                                                                    ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		[ "${NEW_MD5_SP}" == "${OLD_MD5_SP}" ] || ubus call "$spobj" reload


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 635:
	uci -q -P /var/state set wireless._${phy}.md5_${ifname}="${NEW_MD5_SP}"
                                           ^----^ SC2086: Double quote to prevent globbing and word splitting.
                                                      ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	uci -q -P /var/state set wireless._"${phy}".md5_"${ifname}"="${NEW_MD5_SP}"


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 641:
	local spobj="$(ubus -S list | grep wpa_supplicant.${ifname})"
                                                          ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local spobj="$(ubus -S list | grep wpa_supplicant."${ifname}")"


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 658:
		ubus call $spobj reload
                          ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		ubus call "$spobj" reload


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 668:
					case "$(( ($channel / 4) % 2 ))" in
                                                   ^------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 720:
						ikey="$(($idx - 1)):$(prepare_key_wep "$ikey")"
                                                         ^--^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 721:
						[ $idx -eq $key ] && ikey="d:$ikey"
                                                           ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
						[ $idx -eq "$key" ] && ikey="d:$ikey"


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 740:
	iw dev "$ifname" ibss join "$ssid" $freq $iw_htmode fixed-freq $bssid \
                                           ^---^ SC2086: Double quote to prevent globbing and word splitting.
                                                                       ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	iw dev "$ifname" ibss join "$ssid" "$freq" $iw_htmode fixed-freq "$bssid" \


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 741:
		beacon-interval $beacon_int \
                                ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		beacon-interval "$beacon_int" \


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 762:
	iw dev "$ifname" mesh join "$ssid" freq $freq $iw_htmode \
                                                ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	iw dev "$ifname" mesh join "$ssid" freq "$freq" $iw_htmode \


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 764:
		beacon-interval $beacon_int
                                ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		beacon-interval "$beacon_int"


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 796:
			if [ "$wpa" -gt 0 -o "$auto_channel" -gt 0 ] || chan_is_dfs "$phy" "$channel"; then
                                          ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 797:
				mac80211_setup_supplicant $vif_enable || failed=1
                                                          ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
				mac80211_setup_supplicant "$vif_enable" || failed=1


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 799:
				mac80211_setup_mesh $vif_enable
                                                    ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
				mac80211_setup_mesh "$vif_enable"


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 808:
			if [ "$wpa" -gt 0 -o "$auto_channel" -gt 0 ]; then
                                          ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 810:
				mac80211_setup_supplicant_noctl $vif_enable || failed=1
                                                                ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
				mac80211_setup_supplicant_noctl "$vif_enable" || failed=1


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 812:
				mac80211_setup_adhoc $vif_enable
                                                     ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
				mac80211_setup_adhoc "$vif_enable"


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 816:
			mac80211_setup_supplicant $vif_enable || failed=1
                                                  ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			mac80211_setup_supplicant "$vif_enable" || failed=1


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 842:
		[ "$service" != "none" ] && ubus call ${service} config_remove "{\"iface\":\"$wdev\"}"
                                                      ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		[ "$service" != "none" ] && ubus call "${service}" config_remove "{\"iface\":\"$wdev\"}"


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 850:
	local primary_ap=$(uci -q -P /var/state get wireless._${phy}.aplist)
                                                              ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local primary_ap=$(uci -q -P /var/state get wireless._"${phy}".aplist)


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 854:
	mac80211_vap_cleanup wpa_supplicant "$(uci -q -P /var/state get wireless._${phy}.splist)"
                                                                                  ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	mac80211_vap_cleanup wpa_supplicant "$(uci -q -P /var/state get wireless._"${phy}".splist)"


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 855:
	mac80211_vap_cleanup none "$(uci -q -P /var/state get wireless._${phy}.umlist)"
                                                                        ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	mac80211_vap_cleanup none "$(uci -q -P /var/state get wireless._"${phy}".umlist)"


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 883:
	[ -z "$(uci -q -P /var/state show wireless._${phy})" ] && {
                                                    ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ -z "$(uci -q -P /var/state show wireless._"${phy}")" ] && {


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 884:
		uci -q -P /var/state set wireless._${phy}=phy
                                                   ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		uci -q -P /var/state set wireless._"${phy}"=phy


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 888:
	OLDAPLIST=$(uci -q -P /var/state get wireless._${phy}.aplist)
                                                       ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	OLDAPLIST=$(uci -q -P /var/state get wireless._"${phy}".aplist)


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 889:
	OLDSPLIST=$(uci -q -P /var/state get wireless._${phy}.splist)
                                                       ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	OLDSPLIST=$(uci -q -P /var/state get wireless._"${phy}".splist)


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 890:
	OLDUMLIST=$(uci -q -P /var/state get wireless._${phy}.umlist)
                                                       ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	OLDUMLIST=$(uci -q -P /var/state get wireless._"${phy}".umlist)


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 927:
		for file in /sys/kernel/debug/ieee80211/$phy/ath9k*/chanbw /sys/kernel/debug/ieee80211/$phy/ath5k/bwmode; do
                                                        ^--^ SC2231: Quote expansions in this for loop glob to prevent wordsplitting, e.g. "$dir"/*.txt .


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 941:
	iw phy "$phy" set antenna_gain $antenna_gain >/dev/null 2>&1
                                       ^-----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	iw phy "$phy" set antenna_gain "$antenna_gain" >/dev/null 2>&1


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 968:
	NEW_MD5=$(test -e "${hostapd_conf_file}" && md5sum ${hostapd_conf_file})
                                                           ^------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	NEW_MD5=$(test -e "${hostapd_conf_file}" && md5sum "${hostapd_conf_file}")


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 969:
	OLD_MD5=$(uci -q -P /var/state get wireless._${phy}.md5)
                                                     ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	OLD_MD5=$(uci -q -P /var/state get wireless._"${phy}".md5)


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 978:
		if [ -n "$(ubus list | grep hostapd.$primary_ap)" ]; then
                     ^-- SC2143: Use grep -q instead of comparing output with [ -n .. ].


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 984:
					mac80211_vap_cleanup wpa_supplicant "$(uci -q -P /var/state get wireless._${phy}.splist)"
                                                                                                                  ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
					mac80211_vap_cleanup wpa_supplicant "$(uci -q -P /var/state get wireless._"${phy}".splist)"


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 985:
					mac80211_vap_cleanup none "$(uci -q -P /var/state get wireless._${phy}.umlist)"
                                                                                                        ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
					mac80211_vap_cleanup none "$(uci -q -P /var/state get wireless._"${phy}".umlist)"


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 1005:
	uci -q -P /var/state set wireless._${phy}.aplist="${NEWAPLIST}"
                                           ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	uci -q -P /var/state set wireless._"${phy}".aplist="${NEWAPLIST}"


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 1006:
	uci -q -P /var/state set wireless._${phy}.md5="${NEW_MD5}"
                                           ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	uci -q -P /var/state set wireless._"${phy}".md5="${NEW_MD5}"


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 1016:
	uci -q -P /var/state set wireless._${phy}.splist="${NEWSPLIST}"
                                           ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	uci -q -P /var/state set wireless._"${phy}".splist="${NEWSPLIST}"


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 1017:
	uci -q -P /var/state set wireless._${phy}.umlist="${NEWUMLIST}"
                                           ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	uci -q -P /var/state set wireless._"${phy}".umlist="${NEWUMLIST}"


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 1037:
		ls "/sys/class/ieee80211/${phy}/device" 2>/dev/null | grep net: | sed -e 's,net:,,g'
                ^-- SC2010: Don't use ls | grep. Use a glob or a for loop with a condition to allow non-alphanumeric filenames.


In openwrt/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh line 1056:
	uci -q -P /var/state revert wireless._${phy}
                                              ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	uci -q -P /var/state revert wireless._"${phy}"

For more information:
  https://www.shellcheck.net/wiki/SC1087 -- Use braces when expanding arrays,...
  https://www.shellcheck.net/wiki/SC2045 -- Iterating over ls output is fragi...
  https://www.shellcheck.net/wiki/SC1007 -- Remove space after = if trying to...
