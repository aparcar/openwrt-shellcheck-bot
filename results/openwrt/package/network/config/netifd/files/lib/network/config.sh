
In openwrt/package/network/config/netifd/files/lib/network/config.sh line 12:
			json_load "$(ifstatus $interface)"
                                              ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			json_load "$(ifstatus "$interface")"


In openwrt/package/network/config/netifd/files/lib/network/config.sh line 73:
	[ -n "$2" ] && \
                    ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.

For more information:
  https://www.shellcheck.net/wiki/SC2015 -- Note that A && B || C is not if-t...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
