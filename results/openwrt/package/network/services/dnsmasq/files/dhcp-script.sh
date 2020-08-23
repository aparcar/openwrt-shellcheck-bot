
In openwrt/package/network/services/dnsmasq/files/dhcp-script.sh line 3:
[ -f "$USER_DHCPSCRIPT" ] && . "$USER_DHCPSCRIPT" "$@"
                               ^----------------^ SC1090: Can't follow non-constant source. Use a directive to specify location.
                                                  ^--^ SC2240: The dot command does not support arguments in sh/dash. Set them as variables.

For more information:
  https://www.shellcheck.net/wiki/SC1090 -- Can't follow non-constant source....
  https://www.shellcheck.net/wiki/SC2240 -- The dot command does not support ...
