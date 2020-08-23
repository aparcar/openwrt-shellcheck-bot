
In openwrt/package/network/ipv6/6to4/files/6to4.sh line 14:
	local oIFS="$IFS"; IFS="."; set -- $ip4; IFS="$oIFS"
                                           ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local oIFS="$IFS"; IFS="."; set -- "$ip4"; IFS="$oIFS"


In openwrt/package/network/ipv6/6to4/files/6to4.sh line 16:
	printf "2002:%02x%02x:%02x%02x\n" $1 $2 $3 $4
                                          ^-- SC2086: Double quote to prevent globbing and word splitting.
                                             ^-- SC2086: Double quote to prevent globbing and word splitting.
                                                ^-- SC2086: Double quote to prevent globbing and word splitting.
                                                   ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	printf "2002:%02x%02x:%02x%02x\n" "$1" "$2" "$3" "$4"


In openwrt/package/network/ipv6/6to4/files/6to4.sh line 21:
	local oIFS="$IFS"; IFS="."; set -- $1; IFS="$oIFS"
                                           ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local oIFS="$IFS"; IFS="."; set -- "$1"; IFS="$oIFS"


In openwrt/package/network/ipv6/6to4/files/6to4.sh line 22:
	[ $1 -eq  10 ] && return 0
          ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ "$1" -eq  10 ] && return 0


In openwrt/package/network/ipv6/6to4/files/6to4.sh line 23:
	[ $1 -eq 192 ] && [ $2 -eq 168 ] && return 0
          ^-- SC2086: Double quote to prevent globbing and word splitting.
                            ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ "$1" -eq 192 ] && [ "$2" -eq 168 ] && return 0


In openwrt/package/network/ipv6/6to4/files/6to4.sh line 24:
	[ $1 -eq 172 ] && [ $2 -ge  16 ] && [ $2 -le  31 ] && return 0
          ^-- SC2086: Double quote to prevent globbing and word splitting.
                            ^-- SC2086: Double quote to prevent globbing and word splitting.
                                              ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ "$1" -eq 172 ] && [ "$2" -ge  16 ] && [ "$2" -le  31 ] && return 0


In openwrt/package/network/ipv6/6to4/files/6to4.sh line 27:
	[ $1 -eq 100 ] && [ $2 -ge  64 ] && [ $2 -le 127 ] && return 0
          ^-- SC2086: Double quote to prevent globbing and word splitting.
                            ^-- SC2086: Double quote to prevent globbing and word splitting.
                                              ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ "$1" -eq 100 ] && [ "$2" -ge  64 ] && [ "$2" -le 127 ] && return 0

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
