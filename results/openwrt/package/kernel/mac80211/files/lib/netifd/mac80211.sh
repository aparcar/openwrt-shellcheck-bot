
In openwrt/package/kernel/mac80211/files/lib/netifd/mac80211.sh line 4:
	[ -x /usr/bin/readlink -a -h /sys/class/ieee80211/${phy} ] || return
                               ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.
                                                          ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ -x /usr/bin/readlink -a -h /sys/class/ieee80211/"${phy}" ] || return


In openwrt/package/kernel/mac80211/files/lib/netifd/mac80211.sh line 6:
	local path="$(readlink -f /sys/class/ieee80211/${phy}/device)"
                                                       ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local path="$(readlink -f /sys/class/ieee80211/"${phy}"/device)"


In openwrt/package/kernel/mac80211/files/lib/netifd/mac80211.sh line 16:
	for p in $(ls /sys/class/ieee80211/$phy/device/ieee80211); do
                 ^-- SC2045: Iterating over ls output is fragile. Use globs.
                                           ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	for p in $(ls /sys/class/ieee80211/"$phy"/device/ieee80211); do


In openwrt/package/kernel/mac80211/files/lib/netifd/mac80211.sh line 30:
	for p in $(ls /sys/class/ieee80211); do
                 ^------------------------^ SC2045: Iterating over ls output is fragile. Use globs.

For more information:
  https://www.shellcheck.net/wiki/SC2045 -- Iterating over ls output is fragi...
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] && [ q ] as [ p -a q...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
