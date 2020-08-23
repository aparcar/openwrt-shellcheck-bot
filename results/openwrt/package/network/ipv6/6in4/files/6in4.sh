
In openwrt/package/network/ipv6/6in4/files/6in4.sh line 6:
	. /lib/functions.sh
          ^---------------^ SC1091: Not following: /lib/functions.sh was not specified as input (see shellcheck -x).


In openwrt/package/network/ipv6/6in4/files/6in4.sh line 7:
	. /lib/functions/network.sh
          ^-----------------------^ SC1091: Not following: /lib/functions/network.sh was not specified as input (see shellcheck -x).


In openwrt/package/network/ipv6/6in4/files/6in4.sh line 8:
	. ../netifd-proto.sh
          ^----------------^ SC1091: Not following: ../netifd-proto.sh was not specified as input (see shellcheck -x).


In openwrt/package/network/ipv6/6in4/files/6in4.sh line 15:
	local oIFS="$IFS"; IFS="."; set -- $1; IFS="$oIFS"
                                           ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local oIFS="$IFS"; IFS="."; set -- "$1"; IFS="$oIFS"


In openwrt/package/network/ipv6/6in4/files/6in4.sh line 16:
	[ $1 -eq  10 ] && return 1
          ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ "$1" -eq  10 ] && return 1


In openwrt/package/network/ipv6/6in4/files/6in4.sh line 17:
	[ $1 -eq 192 ] && [ $2 -eq 168 ] && return 1
          ^-- SC2086: Double quote to prevent globbing and word splitting.
                            ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ "$1" -eq 192 ] && [ "$2" -eq 168 ] && return 1


In openwrt/package/network/ipv6/6in4/files/6in4.sh line 18:
	[ $1 -eq 172 ] && [ $2 -ge  16 ] && [ $2 -le  31 ] && return 1
          ^-- SC2086: Double quote to prevent globbing and word splitting.
                            ^-- SC2086: Double quote to prevent globbing and word splitting.
                                              ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ "$1" -eq 172 ] && [ "$2" -ge  16 ] && [ "$2" -le  31 ] && return 1


In openwrt/package/network/ipv6/6in4/files/6in4.sh line 21:
	[ $1 -eq 100 ] && [ $2 -ge  64 ] && [ $2 -le 127 ] && return 1
          ^-- SC2086: Double quote to prevent globbing and word splitting.
                            ^-- SC2086: Double quote to prevent globbing and word splitting.
                                              ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ "$1" -eq 100 ] && [ "$2" -ge  64 ] && [ "$2" -le 127 ] && return 1


In openwrt/package/network/ipv6/6in4/files/6in4.sh line 100:
	[ -n "$tunnelid" -a -n "$username" -a \( -n "$password" -o -n "$updatekey" \) ] && {
                         ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.
                                           ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.
                                                                ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/ipv6/6in4/files/6in4.sh line 109:
		[ "$http" = "https" -a -z "$(find $ca_path -name "*.0" 2>/dev/null)" ] && {
                                    ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.
                                                  ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		[ "$http" = "https" -a -z "$(find "$ca_path" -name "*.0" 2>/dev/null)" ] && {


In openwrt/package/network/ipv6/6in4/files/6in4.sh line 125:
				if proto_6in4_update $urlget $urlget_opts --user="$username" --password="$password" "$url" 2>&1 | \
                                                             ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
				if proto_6in4_update $urlget "$urlget_opts" --user="$username" --password="$password" "$url" 2>&1 | \

For more information:
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] && [ q ] as [ p -a q...
  https://www.shellcheck.net/wiki/SC1091 -- Not following: ../netifd-proto.sh...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
