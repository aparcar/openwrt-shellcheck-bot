
In openwrt/package/network/config/qos-scripts/files/usr/lib/qos/generate.sh line 2:
[ -e /lib/functions.sh ] && . /lib/functions.sh || . ./functions.sh
                         ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.


In openwrt/package/network/config/qos-scripts/files/usr/lib/qos/generate.sh line 3:
[ -x /sbin/modprobe ] && {
                      ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.


In openwrt/package/network/config/qos-scripts/files/usr/lib/qos/generate.sh line 17:
			append INSMOD "$insmod $* >&- 2>&-" "$N"; export insmod_$1=1
                                                                                ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			append INSMOD "$insmod $* >&- 2>&-" "$N"; export insmod_"$1"=1


In openwrt/package/network/config/qos-scripts/files/usr/lib/qos/generate.sh line 22:
[ -e /etc/config/network ] && {
                           ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.


In openwrt/package/network/config/qos-scripts/files/usr/lib/qos/generate.sh line 77:
				value="$(echo "$value" | sed -e 's,-,:,g')"
                                         ^-- SC2001: See if you can use ${variable//search/replace} instead.


In openwrt/package/network/config/qos-scripts/files/usr/lib/qos/generate.sh line 109:
				value="$(echo "$value" | sed -e 's,-,:,g')"
                                         ^-- SC2001: See if you can use ${variable//search/replace} instead.


In openwrt/package/network/config/qos-scripts/files/usr/lib/qos/generate.sh line 117:
				value="$(echo "$value" | sed -e 's,-,:,g')"
                                         ^-- SC2001: See if you can use ${variable//search/replace} instead.


In openwrt/package/network/config/qos-scripts/files/usr/lib/qos/generate.sh line 142:
				value="$(echo "$value" | sed -e 's,-,:,g')"
                                         ^-- SC2001: See if you can use ${variable//search/replace} instead.


In openwrt/package/network/config/qos-scripts/files/usr/lib/qos/generate.sh line 153:
				value="$(echo "$value" | sed -e 's,-,:,g')"
                                         ^-- SC2001: See if you can use ${variable//search/replace} instead.


In openwrt/package/network/config/qos-scripts/files/usr/lib/qos/generate.sh line 164:
					*) unset $var; return 0;;
                                                 ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
					*) unset "$var"; return 0;;


In openwrt/package/network/config/qos-scripts/files/usr/lib/qos/generate.sh line 195:
config_cb() {
^-- SC2120: config_cb references arguments, but none are ever passed.


In openwrt/package/network/config/qos-scripts/files/usr/lib/qos/generate.sh line 214:
	case "$TYPE" in
              ^---^ SC2153: Possible misspelling: TYPE may not be assigned, but type is.


In openwrt/package/network/config/qos-scripts/files/usr/lib/qos/generate.sh line 220:
				C=$(($C+1))
                                     ^-- SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/network/config/qos-scripts/files/usr/lib/qos/generate.sh line 225:
					device="$(find_ifname $1)"
                                                              ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
					device="$(find_ifname "$1")"


In openwrt/package/network/config/qos-scripts/files/usr/lib/qos/generate.sh line 247:
		c="$(($c + 1))"
                      ^-- SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/network/config/qos-scripts/files/usr/lib/qos/generate.sh line 267:
	export ${varname}="${tmp:-$default}"
               ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	export "${varname}"="${tmp:-$default}"


In openwrt/package/network/config/qos-scripts/files/usr/lib/qos/generate.sh line 285:
	[ -z "$device" -o 1 -ne "$enabled" ] && {
                       ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/config/qos-scripts/files/usr/lib/qos/generate.sh line 299:
				[ "$overhead" = 1 ] && upload=$(($upload * 98 / 100 - (15 * 128 / $upload)))
                                                                 ^-----^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                                                                  ^-----^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/network/config/qos-scripts/files/usr/lib/qos/generate.sh line 306:
				[ "$(ls -d /proc/sys/net/ipv4/conf/ifb* 2>&- | wc -l)" -ne "$num_ifb" ] && add_insmod ifb numifbs="$num_ifb"
                                     ^-- SC2012: Use find instead of ls to better handle non-alphanumeric filenames.


In openwrt/package/network/config/qos-scripts/files/usr/lib/qos/generate.sh line 308:
				[ "$overhead" = 1 ] && download=$(($download * 98 / 100 - (80 * 1024 / $download)))
                                                                   ^-------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                                                                       ^-------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/network/config/qos-scripts/files/usr/lib/qos/generate.sh line 318:
			cls_var pktsize "$class" packetsize $dir 1500
                                                            ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			cls_var pktsize "$class" packetsize "$dir" 1500


In openwrt/package/network/config/qos-scripts/files/usr/lib/qos/generate.sh line 319:
			cls_var pktdelay "$class" packetdelay $dir 0
                                                              ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			cls_var pktdelay "$class" packetdelay "$dir" 0


In openwrt/package/network/config/qos-scripts/files/usr/lib/qos/generate.sh line 320:
			cls_var maxrate "$class" limitrate $dir 100
                                                           ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			cls_var maxrate "$class" limitrate "$dir" 100


In openwrt/package/network/config/qos-scripts/files/usr/lib/qos/generate.sh line 321:
			cls_var prio "$class" priority $dir 1
                                                       ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			cls_var prio "$class" priority "$dir" 1


In openwrt/package/network/config/qos-scripts/files/usr/lib/qos/generate.sh line 322:
			cls_var avgrate "$class" avgrate $dir 0
                                                         ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			cls_var avgrate "$class" avgrate "$dir" 0


In openwrt/package/network/config/qos-scripts/files/usr/lib/qos/generate.sh line 323:
			cls_var qdisc "$class" qdisc $dir ""
                                                     ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			cls_var qdisc "$class" qdisc "$dir" ""


In openwrt/package/network/config/qos-scripts/files/usr/lib/qos/generate.sh line 324:
			cls_var filter "$class" filter $dir ""
                                                       ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			cls_var filter "$class" filter "$dir" ""


In openwrt/package/network/config/qos-scripts/files/usr/lib/qos/generate.sh line 329:
		export dev_${dir}="ip link add ${dev} type ifb >&- 2>&-
                           ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		export dev_"${dir}"="ip link add ${dev} type ifb >&- 2>&-


In openwrt/package/network/config/qos-scripts/files/usr/lib/qos/generate.sh line 347:
		append dev_${dir} "tc qdisc del dev $device ingress >&- 2>&-
                           ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		append dev_"${dir}" "tc qdisc del dev $device ingress >&- 2>&-


In openwrt/package/network/config/qos-scripts/files/usr/lib/qos/generate.sh line 355:
${INSMOD:+$INSMOD$N}${dev_up:+$dev_up
          ^-----^ SC2153: Possible misspelling: INSMOD may not be assigned, but insmod is.


In openwrt/package/network/config/qos-scripts/files/usr/lib/qos/generate.sh line 385:
		[ ! -z "$(echo $options | grep 'TOS')" ] && {
                  ^-- SC2236: Use -n instead of ! -z.
                    ^-- SC2143: Use ! grep -q instead of comparing output with [ -z .. ].
                               ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		[ ! -z "$(echo "$options" | grep 'TOS')" ] && {


In openwrt/package/network/config/qos-scripts/files/usr/lib/qos/generate.sh line 393:
		target=$(($target | ($target << 4)))
                          ^-----^ SC2004: $/${} is unnecessary on arithmetic variables.
                                     ^-----^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/network/config/qos-scripts/files/usr/lib/qos/generate.sh line 412:
		[ -z "$maxsize" -o -z "$mark" ] || {
                                ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/config/qos-scripts/files/usr/lib/qos/generate.sh line 474:
		start_cg $group
                         ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		start_cg "$group"


In openwrt/package/network/config/qos-scripts/files/usr/lib/qos/generate.sh line 494:
				-e '${p;g}' |
                                   ^------^ SC2016: Expressions don't expand in single quotes, use double quotes for that.


In openwrt/package/network/config/qos-scripts/files/usr/lib/qos/generate.sh line 503:
[ -e ./qos.conf ] && {
                  ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.


In openwrt/package/network/config/qos-scripts/files/usr/lib/qos/generate.sh line 505:
	config_cb
        ^-------^ SC2119: Use config_cb "$@" if function's $1 should mean script's $1.


In openwrt/package/network/config/qos-scripts/files/usr/lib/qos/generate.sh line 513:
	export C="$(($C + 1))"
                     ^-- SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/network/config/qos-scripts/files/usr/lib/qos/generate.sh line 516:
[ -x /usr/sbin/ip6tables ] && {
                           ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.

For more information:
  https://www.shellcheck.net/wiki/SC2120 -- config_cb references arguments, b...
  https://www.shellcheck.net/wiki/SC2153 -- Possible misspelling: INSMOD may ...
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] || [ q ] as [ p -o q...
