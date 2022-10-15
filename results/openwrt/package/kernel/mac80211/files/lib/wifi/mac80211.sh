
In openwrt/package/kernel/mac80211/files/lib/wifi/mac80211.sh line 17:
			[ -d /sys/class/ieee80211/$phy ] && \
                                                  ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			[ -d /sys/class/ieee80211/"$phy" ] && \


In openwrt/package/kernel/mac80211/files/lib/wifi/mac80211.sh line 35:
	[ -n "$path" -a "$phy_path" = "$path" ] && {
                     ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/kernel/mac80211/files/lib/wifi/mac80211.sh line 42:
	[ -n "$macaddr" -a "$dev_macaddr" = "$macaddr" ] && found=1
                        ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/kernel/mac80211/files/lib/wifi/mac80211.sh line 118:
		[ -n "$mode_band" -a "$band" = "6g" ] && return
                                  ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/kernel/mac80211/files/lib/wifi/mac80211.sh line 169:
		macaddr="$(cat /sys/class/ieee80211/${dev}/macaddress)"
                                                    ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		macaddr="$(cat /sys/class/ieee80211/"${dev}"/macaddress)"


In openwrt/package/kernel/mac80211/files/lib/wifi/mac80211.sh line 181:
		devidx=$(($devidx + 1))
                          ^-----^ SC2004: $/${} is unnecessary on arithmetic variables.

For more information:
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] && [ q ] as [ p -a q...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
  https://www.shellcheck.net/wiki/SC2004 -- $/${} is unnecessary on arithmeti...
