
In openwrt/package/network/services/ppp/files/ppp.sh line 22:
		if [ -n "$res_mask" -a "$mask" != 32 ]; then
                                    ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/services/ppp/files/ppp.sh line 95:
	[ ! -e /proc/sys/net/ipv6 ] && ipv6=0 || json_get_var ipv6 ipv6
                                    ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.


In openwrt/package/network/services/ppp/files/ppp.sh line 99:
	elif [ -z "$ipv6" -o "$ipv6" = auto ]; then
                          ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/services/ppp/files/ppp.sh line 164:
		"$@" $pppd_options
                     ^-----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		"$@" "$pppd_options"


In openwrt/package/network/services/ppp/files/ppp.sh line 169:
	local errorstring=$(ppp_exitcode_tostring $ERROR)
                                                  ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local errorstring=$(ppp_exitcode_tostring "$ERROR")


In openwrt/package/network/services/ppp/files/ppp.sh line 280:
		${atmdev:+$atmdev.}${vpi:-8}.${vci:-35} \
                                   ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                                             ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		${atmdev:+$atmdev.}"${vpi:-8}"."${vci:-35}" \


In openwrt/package/network/services/ppp/files/ppp.sh line 305:
			( proto_add_host_dependency "$config" "$ip" $interface )
                                                                    ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			( proto_add_host_dependency "$config" "$ip" "$interface" )


In openwrt/package/network/services/ppp/files/ppp.sh line 321:
		pptp_server $server \
                            ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		pptp_server "$server" \


In openwrt/package/network/services/ppp/files/ppp.sh line 331:
	[ -f /usr/lib/pppd/*/pppoe.so ] && add_protocol pppoe
             ^----------------------^ SC2144: -f doesn't work with globs. Use a for loop.


In openwrt/package/network/services/ppp/files/ppp.sh line 332:
	[ -f /usr/lib/pppd/*/pppoatm.so ] && add_protocol pppoa
             ^------------------------^ SC2144: -f doesn't work with globs. Use a for loop.


In openwrt/package/network/services/ppp/files/ppp.sh line 333:
	[ -f /usr/lib/pppd/*/pptp.so ] && add_protocol pptp
             ^---------------------^ SC2144: -f doesn't work with globs. Use a for loop.

For more information:
  https://www.shellcheck.net/wiki/SC2144 -- -f doesn't work with globs. Use a...
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] && [ q ] as [ p -a q...
  https://www.shellcheck.net/wiki/SC2015 -- Note that A && B || C is not if-t...
