
In openwrt/package/kernel/mac80211/files/lib/wifi/mac80211.sh line 8:
		[ -d /sys/class/ieee80211/$phy ] && return
                                          ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		[ -d /sys/class/ieee80211/"$phy" ] && return


In openwrt/package/kernel/mac80211/files/lib/wifi/mac80211.sh line 18:
	local macaddr="$(config_get "$device" macaddr | tr 'A-Z' 'a-z')"
                                                           ^---^ SC2019: Use '[:upper:]' to support accents and foreign alphabets.
                                                                 ^---^ SC2018: Use '[:lower:]' to support accents and foreign alphabets.


In openwrt/package/kernel/mac80211/files/lib/wifi/mac80211.sh line 23:
			[ "$macaddr" = "$(cat ${_phy}/macaddress)" ] || continue
                                              ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			[ "$macaddr" = "$(cat "${_phy}"/macaddress)" ] || continue


In openwrt/package/kernel/mac80211/files/lib/wifi/mac80211.sh line 37:
	[ -n "$phy" -a -d "/sys/class/ieee80211/$phy" ] || {
                    ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/kernel/mac80211/files/lib/wifi/mac80211.sh line 66:
		devidx=$(($devidx + 1))
                          ^-----^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/mac80211/files/lib/wifi/mac80211.sh line 103:
			dev_id="set wireless.radio${devidx}.macaddr=$(cat /sys/class/ieee80211/${dev}/macaddress)"
                                                                                               ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			dev_id="set wireless.radio${devidx}.macaddr=$(cat /sys/class/ieee80211/"${dev}"/macaddress)"


In openwrt/package/kernel/mac80211/files/lib/wifi/mac80211.sh line 124:
		devidx=$(($devidx + 1))
                          ^-----^ SC2004: $/${} is unnecessary on arithmetic variables.

For more information:
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] && [ q ] as [ p -a q...
  https://www.shellcheck.net/wiki/SC2018 -- Use '[:lower:]' to support accent...
  https://www.shellcheck.net/wiki/SC2019 -- Use '[:upper:]' to support accent...
