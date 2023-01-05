
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


In openwrt/package/base-files/files/lib/functions/system.sh line 97:
	size=$((0x$(dd if=$part skip=9 bs=1 count=4 2>/dev/null | hexdump -v -e '1/4 "%08x"')))
                          ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	size=$((0x$(dd if="$part" skip=9 bs=1 count=4 2>/dev/null | hexdump -v -e '1/4 "%08x"')))


In openwrt/package/base-files/files/lib/functions/system.sh line 99:
		mac_dirty=$(dd if=$part bs=1 count=$size skip=$((0x100)) 2>/dev/null | \
                                  ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		mac_dirty=$(dd if="$part" bs=1 count=$size skip=$((0x100)) 2>/dev/null | \


In openwrt/package/base-files/files/lib/functions/system.sh line 102:
		mac_dirty=$(dd if=$part bs=1 count=$size skip=$((0x100)) 2>/dev/null | \
                                  ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		mac_dirty=$(dd if="$part" bs=1 count=$size skip=$((0x100)) 2>/dev/null | \


In openwrt/package/base-files/files/lib/functions/system.sh line 123:
	key=$(dd if=$mtdname bs=1 skip=16 count=8 2>/dev/null | \
                    ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	key=$(dd if="$mtdname" bs=1 skip=16 count=8 2>/dev/null | \


In openwrt/package/base-files/files/lib/functions/system.sh line 126:
	macaddr=$(dd if=$mtdname bs=1 skip=32 count=8 2>/dev/null | \
                        ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	macaddr=$(dd if="$mtdname" bs=1 skip=32 count=8 2>/dev/null | \


In openwrt/package/base-files/files/lib/functions/system.sh line 127:
		uencrypt -n -d -k $key -c des-ecb | hexdump -v -n 6 -e '5/1 "%02x:" 1/1 "%02x"')
                                  ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		uencrypt -n -d -k "$key" -c des-ecb | hexdump -v -n 6 -e '5/1 "%02x:" 1/1 "%02x"')


In openwrt/package/base-files/files/lib/functions/system.sh line 129:
	echo $macaddr
             ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo "$macaddr"


In openwrt/package/base-files/files/lib/functions/system.sh line 137:
	local ubidev=$(nand_attach_ubi $CI_UBIPART)
                                       ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local ubidev=$(nand_attach_ubi "$CI_UBIPART")


In openwrt/package/base-files/files/lib/functions/system.sh line 138:
	local part=$(nand_find_volume $ubidev $volumename)
                                      ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                              ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local part=$(nand_find_volume "$ubidev" "$volumename")


In openwrt/package/base-files/files/lib/functions/system.sh line 140:
	cat "/dev/$part" | sed -n 's/^\s*option macaddr\s*'"'"'\?\([0-9A-F:]\+\)'"'"'\?/\1/Ip'
            ^----------^ SC2002: Useless cat. Consider 'cmd < file | ..' or 'cmd file | ..' instead.


In openwrt/package/base-files/files/lib/functions/system.sh line 181:
	local ubidev=$(nand_find_ubi $CI_UBIPART)
                                     ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local ubidev=$(nand_find_ubi "$CI_UBIPART")


In openwrt/package/base-files/files/lib/functions/system.sh line 182:
	local part=$(nand_find_volume $ubidev $1)
                                      ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                              ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local part=$(nand_find_volume "$ubidev" "$1")


In openwrt/package/base-files/files/lib/functions/system.sh line 190:
	while read dev size erasesize name; do
              ^--^ SC2162: read without -r will mangle backslashes.


In openwrt/package/base-files/files/lib/functions/system.sh line 215:
	echo $oui:$nic
             ^--^ SC2086: Double quote to prevent globbing and word splitting.
                  ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo "$oui":"$nic"


In openwrt/package/base-files/files/lib/functions/system.sh line 221:
	local sd_hash=$(sha256sum /sys/class/block/$mmc_dev/device/cid)
                                                   ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local sd_hash=$(sha256sum /sys/class/block/"$mmc_dev"/device/cid)


In openwrt/package/base-files/files/lib/functions/system.sh line 223:
	echo "$(macaddr_unsetbit_mc "$(macaddr_setbit_la "${mac_base}")")"
             ^-- SC2005: Useless echo? Instead of 'echo $(cmd)', just use 'cmd'.


In openwrt/package/base-files/files/lib/functions/system.sh line 230:
	echo ${mac:9:2}$sep${mac:12:2}$sep${mac:15:2}
             ^--------^ SC2086: Double quote to prevent globbing and word splitting.
                       ^--^ SC2086: Double quote to prevent globbing and word splitting.
                           ^---------^ SC2086: Double quote to prevent globbing and word splitting.
                                      ^--^ SC2086: Double quote to prevent globbing and word splitting.
                                          ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo "${mac:9:2}""$sep""${mac:12:2}""$sep""${mac:15:2}"


In openwrt/package/base-files/files/lib/functions/system.sh line 237:
	[ $bit -gt 0 -a $bit -le 48 ] || return
          ^--^ SC2086: Double quote to prevent globbing and word splitting.
                     ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.
                        ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ "$bit" -gt 0 -a "$bit" -le 48 ] || return


In openwrt/package/base-files/files/lib/functions/system.sh line 246:
	[ $bit -gt 0 -a $bit -le 48 ] || return
          ^--^ SC2086: Double quote to prevent globbing and word splitting.
                     ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.
                        ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ "$bit" -gt 0 -a "$bit" -le 48 ] || return


In openwrt/package/base-files/files/lib/functions/system.sh line 252:
	macaddr_setbit $1 7
                       ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	macaddr_setbit "$1" 7


In openwrt/package/base-files/files/lib/functions/system.sh line 258:
	printf "%02x:%s" $((0x${mac%%:*} & ~0x01)) ${mac#*:}
                                                   ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	printf "%02x:%s" $((0x${mac%%:*} & ~0x01)) "${mac#*:}"


In openwrt/package/base-files/files/lib/functions/system.sh line 264:
	echo "$(macaddr_unsetbit_mc "$(macaddr_setbit_la "${randsrc}")")"
             ^-- SC2005: Useless echo? Instead of 'echo $(cmd)', just use 'cmd'.


In openwrt/package/base-files/files/lib/functions/system.sh line 270:
	echo -ne \\x${mac//:/\\x}
                    ^-----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo -ne \\x"${mac//:/\\x}"


In openwrt/package/base-files/files/lib/functions/system.sh line 277:
	mac=$(echo -n $mac | tr -d \")
                      ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	mac=$(echo -n "$mac" | tr -d \")


In openwrt/package/base-files/files/lib/functions/system.sh line 303:
	printf "%02x:%02x:%02x:%02x:%02x:%02x" 0x${canon// / 0x} 2>/dev/null
               ^-----------------------------^ SC2183: This format string has 6 variables, but is passed 1 arguments.
                                                 ^-------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	printf "%02x:%02x:%02x:%02x:%02x:%02x" 0x"${canon// / 0x}" 2>/dev/null

For more information:
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] && [ q ] as [ p -a q...
  https://www.shellcheck.net/wiki/SC2183 -- This format string has 6 variable...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
