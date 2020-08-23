
In openwrt/package/base-files/files/lib/functions/system.sh line 15:
	hexdump -v -n 6 -s $offset -e '5/1 "%02x:" 1/1 "%02x"' $path 2>/dev/null
                           ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                                               ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	hexdump -v -n 6 -s "$offset" -e '5/1 "%02x:" 1/1 "%02x"' "$path" 2>/dev/null


In openwrt/package/base-files/files/lib/functions/system.sh line 28:
	echo $macaddr
             ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo "$macaddr"


In openwrt/package/base-files/files/lib/functions/system.sh line 45:
	echo $macaddr
             ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo "$macaddr"


In openwrt/package/base-files/files/lib/functions/system.sh line 53:
	echo $macaddr
             ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo "$macaddr"


In openwrt/package/base-files/files/lib/functions/system.sh line 120:
	local ubidev=$(nand_find_ubi $CI_UBIPART)
                                     ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local ubidev=$(nand_find_ubi "$CI_UBIPART")


In openwrt/package/base-files/files/lib/functions/system.sh line 121:
	local part=$(nand_find_volume $ubidev $1)
                                      ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                              ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local part=$(nand_find_volume "$ubidev" "$1")


In openwrt/package/base-files/files/lib/functions/system.sh line 129:
	while read dev size erasesize name; do
              ^--^ SC2162: read without -r will mangle backslashes.


In openwrt/package/base-files/files/lib/functions/system.sh line 145:
	echo $oui:$nic
             ^--^ SC2086: Double quote to prevent globbing and word splitting.
                  ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo "$oui":"$nic"


In openwrt/package/base-files/files/lib/functions/system.sh line 152:
	echo ${mac:9:2}$sep${mac:12:2}$sep${mac:15:2}
             ^--------^ SC2086: Double quote to prevent globbing and word splitting.
                       ^--^ SC2086: Double quote to prevent globbing and word splitting.
                           ^---------^ SC2086: Double quote to prevent globbing and word splitting.
                                      ^--^ SC2086: Double quote to prevent globbing and word splitting.
                                          ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo "${mac:9:2}""$sep""${mac:12:2}""$sep""${mac:15:2}"


In openwrt/package/base-files/files/lib/functions/system.sh line 159:
	[ $bit -gt 0 -a $bit -le 48 ] || return
          ^--^ SC2086: Double quote to prevent globbing and word splitting.
                     ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.
                        ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ "$bit" -gt 0 -a "$bit" -le 48 ] || return


In openwrt/package/base-files/files/lib/functions/system.sh line 168:
	[ $bit -gt 0 -a $bit -le 48 ] || return
          ^--^ SC2086: Double quote to prevent globbing and word splitting.
                     ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.
                        ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ "$bit" -gt 0 -a "$bit" -le 48 ] || return


In openwrt/package/base-files/files/lib/functions/system.sh line 174:
	macaddr_setbit $1 7
                       ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	macaddr_setbit "$1" 7


In openwrt/package/base-files/files/lib/functions/system.sh line 180:
	printf "%02x:%s" $((0x${mac%%:*} & ~0x01)) ${mac#*:}
                                                   ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	printf "%02x:%s" $((0x${mac%%:*} & ~0x01)) "${mac#*:}"


In openwrt/package/base-files/files/lib/functions/system.sh line 186:
	echo "$(macaddr_unsetbit_mc "$(macaddr_setbit_la "${randsrc}")")"
             ^-- SC2005: Useless echo? Instead of 'echo $(cmd)', just use 'cmd'.


In openwrt/package/base-files/files/lib/functions/system.sh line 192:
	echo -ne \\x${mac//:/\\x}
                    ^-----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo -ne \\x"${mac//:/\\x}"


In openwrt/package/base-files/files/lib/functions/system.sh line 199:
	mac=$(echo -n $mac | tr -d \")
                      ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	mac=$(echo -n "$mac" | tr -d \")


In openwrt/package/base-files/files/lib/functions/system.sh line 225:
	printf "%02x:%02x:%02x:%02x:%02x:%02x" 0x${canon// / 0x} 2>/dev/null
               ^-----------------------------^ SC2183: This format string has 6 variables, but is passed 1 arguments.
                                                 ^-------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	printf "%02x:%02x:%02x:%02x:%02x:%02x" 0x"${canon// / 0x}" 2>/dev/null

For more information:
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] && [ q ] as [ p -a q...
  https://www.shellcheck.net/wiki/SC2183 -- This format string has 6 variable...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
