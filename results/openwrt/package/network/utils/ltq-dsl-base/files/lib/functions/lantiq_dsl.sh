
In openwrt/package/network/utils/ltq-dsl-base/files/lib/functions/lantiq_dsl.sh line 4:
if [ "$( which vdsl_cpe_control )" ]; then
         ^---^ SC2230: which is non-standard. Use builtin 'command -v' instead.


In openwrt/package/network/utils/ltq-dsl-base/files/lib/functions/lantiq_dsl.sh line 22:
	expr "$1" : '.*'$2'=\([-\.[:alnum:]]*\).*'
                        ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	expr "$1" : '.*'"$2"'=\([-\.[:alnum:]]*\).*'


In openwrt/package/network/utils/ltq-dsl-base/files/lib/functions/lantiq_dsl.sh line 25:
	expr "$1" : '.*'$2'=(\([A-Z0-9,]*\))'
                        ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	expr "$1" : '.*'"$2"'=(\([A-Z0-9,]*\))'


In openwrt/package/network/utils/ltq-dsl-base/files/lib/functions/lantiq_dsl.sh line 32:
	local a=$(expr $1 / 10)
                  ^--^ SC2003: expr is antiquated. Consider rewriting this using $((..)), ${} or [[ ]].
                       ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local a=$(expr "$1" / 10)


In openwrt/package/network/utils/ltq-dsl-base/files/lib/functions/lantiq_dsl.sh line 33:
	local b=$(expr $1 % 10)
                  ^--^ SC2003: expr is antiquated. Consider rewriting this using $((..)), ${} or [[ ]].
                       ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local b=$(expr "$1" % 10)


In openwrt/package/network/utils/ltq-dsl-base/files/lib/functions/lantiq_dsl.sh line 45:
		a=$(expr $val / 1000)
                    ^--^ SC2003: expr is antiquated. Consider rewriting this using $((..)), ${} or [[ ]].
                         ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		a=$(expr "$val" / 1000)


In openwrt/package/network/utils/ltq-dsl-base/files/lib/functions/lantiq_dsl.sh line 46:
		b=$(expr $a % 1000)
                    ^--^ SC2003: expr is antiquated. Consider rewriting this using $((..)), ${} or [[ ]].
                         ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		b=$(expr "$a" % 1000)


In openwrt/package/network/utils/ltq-dsl-base/files/lib/functions/lantiq_dsl.sh line 47:
		a=$(expr $a / 1000)
                    ^--^ SC2003: expr is antiquated. Consider rewriting this using $((..)), ${} or [[ ]].
                         ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		a=$(expr "$a" / 1000)


In openwrt/package/network/utils/ltq-dsl-base/files/lib/functions/lantiq_dsl.sh line 48:
		printf "%d.%03d Mb" ${a} ${b}
                                    ^--^ SC2086: Double quote to prevent globbing and word splitting.
                                         ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		printf "%d.%03d Mb" "${a}" "${b}"


In openwrt/package/network/utils/ltq-dsl-base/files/lib/functions/lantiq_dsl.sh line 50:
		a=$(expr $val / 1000)
                    ^--^ SC2003: expr is antiquated. Consider rewriting this using $((..)), ${} or [[ ]].
                         ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		a=$(expr "$val" / 1000)


In openwrt/package/network/utils/ltq-dsl-base/files/lib/functions/lantiq_dsl.sh line 51:
		printf "%d Kb" ${a}
                               ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		printf "%d Kb" "${a}"


In openwrt/package/network/utils/ltq-dsl-base/files/lib/functions/lantiq_dsl.sh line 62:
	a=$(expr $val / 100)
            ^--^ SC2003: expr is antiquated. Consider rewriting this using $((..)), ${} or [[ ]].
                 ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	a=$(expr "$val" / 100)


In openwrt/package/network/utils/ltq-dsl-base/files/lib/functions/lantiq_dsl.sh line 63:
	b=$(expr $val % 100)
            ^--^ SC2003: expr is antiquated. Consider rewriting this using $((..)), ${} or [[ ]].
                 ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	b=$(expr "$val" % 100)


In openwrt/package/network/utils/ltq-dsl-base/files/lib/functions/lantiq_dsl.sh line 64:
	printf "%d.%d ms" ${a} ${b}
                          ^--^ SC2086: Double quote to prevent globbing and word splitting.
                               ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	printf "%d.%d ms" "${a}" "${b}"


In openwrt/package/network/utils/ltq-dsl-base/files/lib/functions/lantiq_dsl.sh line 70:
	expr $val \* 10
        ^--^ SC2003: expr is antiquated. Consider rewriting this using $((..)), ${} or [[ ]].
             ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	expr "$val" \* 10


In openwrt/package/network/utils/ltq-dsl-base/files/lib/functions/lantiq_dsl.sh line 131:
		[ "$version" != "00,00" ] && val="$(printf "%s %d.%d" "$val" 0x${version//,/ 0x})"
                                                           ^--------^ SC2183: This format string has 3 variables, but is passed 2 arguments.
                                                                               ^---------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		[ "$version" != "00,00" ] && val="$(printf "%s %d.%d" "$val" 0x"${version//,/ 0x}")"


In openwrt/package/network/utils/ltq-dsl-base/files/lib/functions/lantiq_dsl.sh line 204:
	vid=$(parse_vendorid $vid)
                             ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	vid=$(parse_vendorid "$vid")


In openwrt/package/network/utils/ltq-dsl-base/files/lib/functions/lantiq_dsl.sh line 205:
	svid=$(parse_vendorid $svid)
                              ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	svid=$(parse_vendorid "$svid")


In openwrt/package/network/utils/ltq-dsl-base/files/lib/functions/lantiq_dsl.sh line 251:
	-o $((xtse2 & 1)) != 0 \
        ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/utils/ltq-dsl-base/files/lib/functions/lantiq_dsl.sh line 252:
	-o $((xtse3 & 12)) != 0 \
        ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/utils/ltq-dsl-base/files/lib/functions/lantiq_dsl.sh line 253:
	-o $((xtse4 & 3)) != 0 \
        ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/utils/ltq-dsl-base/files/lib/functions/lantiq_dsl.sh line 254:
	-o $((xtse6 & 3)) != 0 \
        ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/utils/ltq-dsl-base/files/lib/functions/lantiq_dsl.sh line 255:
	-o $((xtse8 & 1)) != 0 ]; then
        ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/utils/ltq-dsl-base/files/lib/functions/lantiq_dsl.sh line 260:
	-o $((xtse2 & 2)) != 0 \
        ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/utils/ltq-dsl-base/files/lib/functions/lantiq_dsl.sh line 261:
	-o $((xtse3 & 48)) != 0 \
        ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/utils/ltq-dsl-base/files/lib/functions/lantiq_dsl.sh line 262:
	-o $((xtse6 & 12)) != 0 \
        ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/utils/ltq-dsl-base/files/lib/functions/lantiq_dsl.sh line 263:
	-o $((xtse8 & 2)) != 0 ]; then
        ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/utils/ltq-dsl-base/files/lib/functions/lantiq_dsl.sh line 268:
	-o $((xtse2 & 12)) != 0 \
        ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/utils/ltq-dsl-base/files/lib/functions/lantiq_dsl.sh line 269:
	-o $((xtse8 & 4)) != 0 ]; then
        ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/utils/ltq-dsl-base/files/lib/functions/lantiq_dsl.sh line 274:
	-o $((xtse5 & 3)) != 0 \
        ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/utils/ltq-dsl-base/files/lib/functions/lantiq_dsl.sh line 275:
	-o $((xtse6 & 192)) != 0 ]; then
        ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/utils/ltq-dsl-base/files/lib/functions/lantiq_dsl.sh line 280:
	-o $((xtse7 & 3)) != 0 ]; then
        ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/utils/ltq-dsl-base/files/lib/functions/lantiq_dsl.sh line 289:
	-o $((xtse7 & 12)) != 0 ]; then
        ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/utils/ltq-dsl-base/files/lib/functions/lantiq_dsl.sh line 317:
	-o $((xtse4 & 240)) != 0 \
        ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/utils/ltq-dsl-base/files/lib/functions/lantiq_dsl.sh line 318:
	-o $((xtse5 & 252)) != 0  ]; then
        ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/utils/ltq-dsl-base/files/lib/functions/lantiq_dsl.sh line 323:
	-o $((xtse5 & 3)) != 0  ]; then
        ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/utils/ltq-dsl-base/files/lib/functions/lantiq_dsl.sh line 328:
	-o $((xtse7 & 15)) != 0  ]; then
        ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/network/utils/ltq-dsl-base/files/lib/functions/lantiq_dsl.sh line 543:
	d=$(expr $et / 86400)
            ^--^ SC2003: expr is antiquated. Consider rewriting this using $((..)), ${} or [[ ]].


In openwrt/package/network/utils/ltq-dsl-base/files/lib/functions/lantiq_dsl.sh line 544:
	etr=$(expr $et % 86400)
              ^--^ SC2003: expr is antiquated. Consider rewriting this using $((..)), ${} or [[ ]].


In openwrt/package/network/utils/ltq-dsl-base/files/lib/functions/lantiq_dsl.sh line 545:
	h=$(expr $etr / 3600)
            ^--^ SC2003: expr is antiquated. Consider rewriting this using $((..)), ${} or [[ ]].
                 ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	h=$(expr "$etr" / 3600)


In openwrt/package/network/utils/ltq-dsl-base/files/lib/functions/lantiq_dsl.sh line 546:
	etr=$(expr $etr % 3600)
              ^--^ SC2003: expr is antiquated. Consider rewriting this using $((..)), ${} or [[ ]].
                   ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	etr=$(expr "$etr" % 3600)


In openwrt/package/network/utils/ltq-dsl-base/files/lib/functions/lantiq_dsl.sh line 547:
	m=$(expr $etr / 60)
            ^--^ SC2003: expr is antiquated. Consider rewriting this using $((..)), ${} or [[ ]].
                 ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	m=$(expr "$etr" / 60)


In openwrt/package/network/utils/ltq-dsl-base/files/lib/functions/lantiq_dsl.sh line 548:
	s=$(expr $etr % 60)
            ^--^ SC2003: expr is antiquated. Consider rewriting this using $((..)), ${} or [[ ]].
                 ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	s=$(expr "$etr" % 60)

For more information:
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] || [ q ] as [ p -o q...
  https://www.shellcheck.net/wiki/SC2183 -- This format string has 3 variable...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
