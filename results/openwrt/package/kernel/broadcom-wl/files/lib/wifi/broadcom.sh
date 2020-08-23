
In openwrt/package/kernel/broadcom-wl/files/lib/wifi/broadcom.sh line 12:
		[ $disabled -eq 0 ] || continue
                  ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		[ "$disabled" -eq 0 ] || continue


In openwrt/package/kernel/broadcom-wl/files/lib/wifi/broadcom.sh line 84:
		::)
                ^-- SC2195: This pattern will never match the case statement's word. Double check them.


In openwrt/package/kernel/broadcom-wl/files/lib/wifi/broadcom.sh line 97:
		[ -e $pid_file ] && start-stop-daemon -K -q -s SIGKILL -p $pid_file && rm $pid_file
                     ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                          ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                                          ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		[ -e "$pid_file" ] && start-stop-daemon -K -q -s SIGKILL -p "$pid_file" && rm "$pid_file"


In openwrt/package/kernel/broadcom-wl/files/lib/wifi/broadcom.sh line 101:
		for dev in /sys/class/net/wds${device##wl}-* /sys/class/net/${device}-* /sys/class/net/${device}; do
                                             ^-----------^ SC2231: Quote expansions in this for loop glob to prevent wordsplitting, e.g. "$dir"/*.txt .
                                                                            ^-------^ SC2231: Quote expansions in this for loop glob to prevent wordsplitting, e.g. "$dir"/*.txt .


In openwrt/package/kernel/broadcom-wl/files/lib/wifi/broadcom.sh line 118:
			vif=$(($vif - 1))
                               ^--^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/broadcom-wl/files/lib/wifi/broadcom.sh line 145:
	config_get macaddr "$device" macaddr $(wlc ifname "$device" default_bssid)
                                             ^-- SC2046: Quote this to prevent word splitting.


In openwrt/package/kernel/broadcom-wl/files/lib/wifi/broadcom.sh line 154:
	[ -z "$slottime" ] && {
                           ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.


In openwrt/package/kernel/broadcom-wl/files/lib/wifi/broadcom.sh line 157:
			slottime="$((9 + ($distance / 150) + 1 - (150 - ($distance % 150)) / 150 ))"
                                          ^-------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                                         ^-------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/broadcom-wl/files/lib/wifi/broadcom.sh line 195:
	[ ${channel:-0} -ge 1 -a ${channel:-0} -le 14 ] && band=2
          ^-----------^ SC2086: Double quote to prevent globbing and word splitting.
                              ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.
                                 ^-----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ "${channel:-0}" -ge 1 -a "${channel:-0}" -le 14 ] && band=2


In openwrt/package/kernel/broadcom-wl/files/lib/wifi/broadcom.sh line 196:
	[ ${channel:-0} -ge 36 ] && {
          ^-----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ "${channel:-0}" -ge 36 ] && {


In openwrt/package/kernel/broadcom-wl/files/lib/wifi/broadcom.sh line 202:
	[ -n "$nmode" -a -n "$band" -a -n "$channel" ] && {
                      ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.
                                    ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/kernel/broadcom-wl/files/lib/wifi/broadcom.sh line 206:
					[ $channel -lt 7 ] && htmode="HT40+" || htmode="HT40-"
                                          ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
					[ "$channel" -lt 7 ] && htmode="HT40+" || htmode="HT40-"


In openwrt/package/kernel/broadcom-wl/files/lib/wifi/broadcom.sh line 208:
					[ $(( ($channel / 4) % 2 )) -eq 1 ] && htmode="HT40+" || htmode="HT40-"
                                               ^------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/broadcom-wl/files/lib/wifi/broadcom.sh line 213:
			HT40-)	chanspec=$(printf 0x%x%x%02x $band 0xe $(($channel - 2))); nmode=1; channel=;;
                                                                          ^------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/broadcom-wl/files/lib/wifi/broadcom.sh line 214:
			HT40+)	chanspec=$(printf 0x%x%x%02x $band 0xd $(($channel + 2))); nmode=1; channel=;;
                                                                          ^------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/broadcom-wl/files/lib/wifi/broadcom.sh line 233:
		[ $_c -ge $bssmax ] && break
                          ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		[ $_c -ge "$bssmax" ] && break


In openwrt/package/kernel/broadcom-wl/files/lib/wifi/broadcom.sh line 360:
			[ -n "$bssid" ] && {
                                        ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.


In openwrt/package/kernel/broadcom-wl/files/lib/wifi/broadcom.sh line 384:
		[ -z "$nas" -o -z "$nasopts" ] || {
                            ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/kernel/broadcom-wl/files/lib/wifi/broadcom.sh line 394:
		_c=$(($_c + 1))
                      ^-^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/broadcom-wl/files/lib/wifi/broadcom.sh line 444:
	[ -z "$txpower" ] || iwconfig $device txpower ${txpower}dBm
                                      ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                                      ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ -z "$txpower" ] || iwconfig "$device" txpower "${txpower}"dBm


In openwrt/package/kernel/broadcom-wl/files/lib/wifi/broadcom.sh line 461:
		channel=`wlc ifname wl${i} channel`
                        ^-------------------------^ SC2006: Use $(...) notation instead of legacy backticked `...`.

Did you mean: 
		channel=$(wlc ifname wl${i} channel)

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] && [ q ] as [ p -a q...
  https://www.shellcheck.net/wiki/SC2195 -- This pattern will never match the...
