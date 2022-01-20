
In openwrt/package/network/config/ipip/files/ipip.sh line 41:
		if [ -z $wanif ] && ! network_find_wan wanif; then
                        ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		if [ -z "$wanif" ] && ! network_find_wan wanif; then

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
