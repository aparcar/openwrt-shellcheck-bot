
In openwrt/package/network/ipv6/6rd/files/6rd.sh line 20:
	[ -z "$ip6prefix" -o -z "$peeraddr" ] && {
                          ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/ipv6/6rd/files/6rd.sh line 30:
		if [ -z $wanif ] && ! network_find_wan wanif; then
                        ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		if [ -z "$wanif" ] && ! network_find_wan wanif; then


In openwrt/package/network/ipv6/6rd/files/6rd.sh line 51:
	local ip6lanprefix="$ip6subnet/$(($ip6prefixlen + 32 - $ip4prefixlen))"
                                          ^-----------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                               ^-----------^ SC2004: $/${} is unnecessary on arithmetic variables.

For more information:
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] || [ q ] as [ p -o q...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
  https://www.shellcheck.net/wiki/SC2004 -- $/${} is unnecessary on arithmeti...
