
In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 37:
for (( index=1; index<=$MAX_IMG; index++ )); do
                       ^------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 44:
for (( index=1; index<=$MAX_CONF; index++ )); do
                       ^-------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 79:
	echo "Usage: `basename $0` -A arch -v version -o its_file" \
                     ^-----------^ SC2006: Use $(...) notation instead of legacy backticked `...`.
                               ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo "Usage: $(basename "$0") -A arch -v version -o its_file" \


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 83:
	echo -e "\t $ `basename $0` -A arm -v 4.4 \ "
                      ^-----------^ SC2006: Use $(...) notation instead of legacy backticked `...`.
                                ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo -e "\t $ $(basename "$0") -A arm -v 4.4 \ "


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 112:
	if echo $1 | grep -q img; then
                ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	if echo "$1" | grep -q img; then


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 115:
		let a=$(echo $1 | awk -F "img" '{print $2}')
                ^-- SC2219: Instead of 'let expr', prefer (( expr )) .
                             ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		let a=$(echo "$1" | awk -F "img" '{print $2}')


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 116:
	elif echo $1 | grep -q conf; then
                  ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	elif echo "$1" | grep -q conf; then


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 119:
		let a=$(echo $1 | awk -F "conf" '{print $2}')
                ^-- SC2219: Instead of 'let expr', prefer (( expr )) .
                             ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		let a=$(echo "$1" | awk -F "conf" '{print $2}')


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 121:
	if [ ${a} -lt 0 -o ${a} -gt ${max_a} -o \
                        ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.
                                             ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 122:
		${2} -lt 0 -o ${2} -gt ${max_i} ]; then
                ^--^ SC2086: Double quote to prevent globbing and word splitting.
                           ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.
                              ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		"${2}" -lt 0 -o "${2}" -gt ${max_i} ]; then


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 137:
	array_check $1 $2 || return 0
                    ^-- SC2086: Double quote to prevent globbing and word splitting.
                       ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	array_check "$1" "$2" || return 0


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 139:
		eval $1[$2]=$3
                     ^-- SC2086: Double quote to prevent globbing and word splitting.
                            ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		eval "$1"[$2]="$3"


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 141:
		eval $1[$2]=\"\${$1[$2]} $3\"
                     ^-- SC2086: Double quote to prevent globbing and word splitting.
                                ^-- SC1083: This { is literal. Check expression (missing ;/\n?) or quote it.
                                 ^-- SC2086: Double quote to prevent globbing and word splitting.
                                       ^-- SC1083: This } is literal. Check expression (missing ;/\n?) or quote it.
                                         ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		eval "$1"[$2]=\"\${"$1"[$2]} "$3"\"


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 152:
	eval val=\${$1[$2]}
                   ^-- SC1083: This { is literal. Check expression (missing ;/\n?) or quote it.
                    ^-- SC2086: Double quote to prevent globbing and word splitting.
                          ^-- SC1083: This } is literal. Check expression (missing ;/\n?) or quote it.

Did you mean: 
	eval val=\${"$1"[$2]}


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 153:
	echo $val
             ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo "$val"


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 161:
			a ) array_put img$i 3 $OPTARG;;
                                              ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			a ) array_put img$i 3 "$OPTARG";;


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 162:
			C ) value_sanity_chk compression $OPTARG;
                                                         ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			C ) value_sanity_chk compression "$OPTARG";


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 163:
				array_put img$i 5 $OPTARG;;
                                                  ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
				array_put img$i 5 "$OPTARG";;


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 164:
			c ) array_put img$i 7 $OPTARG append;;
                                              ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			c ) array_put img$i 7 "$OPTARG" append;;


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 165:
			D ) array_put img$i 8 $OPTARG;;
                                              ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			D ) array_put img$i 8 "$OPTARG";;


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 166:
			d ) i=$(($i + 1));
                                 ^-- SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 167:
				d=$(($d + 1));
                                     ^-- SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 170:
				array_put img$i 1 $OPTARG;
                                                  ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
				array_put img$i 1 "$OPTARG";


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 173:
			e ) array_put img$i 4 $OPTARG;;
                                              ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			e ) array_put img$i 4 "$OPTARG";;


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 174:
			h ) value_sanity_chk hash $OPTARG;
                                                  ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			h ) value_sanity_chk hash "$OPTARG";


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 175:
				array_put img$i 6 $OPTARG append;;
                                                  ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
				array_put img$i 6 "$OPTARG" append;;


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 176:
			k ) i=$(($i + 1));
                                 ^-- SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 177:
				k=$(($k + 1));
                                     ^-- SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 180:
				array_put img$i 1 $OPTARG;
                                                  ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
				array_put img$i 1 "$OPTARG";


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 183:
			K ) array_put img$i 9 $OPTARG;;
                                              ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			K ) array_put img$i 9 "$OPTARG";;


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 184:
			n ) array_put img$i 11 $OPTARG;;
                                               ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			n ) array_put img$i 11 "$OPTARG";;


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 187:
			r ) i=$(($i + 1));
                                 ^-- SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 188:
				r=$(($r + 1));
                                     ^-- SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 191:
				array_put img$i 1 $OPTARG;
                                                  ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
				array_put img$i 1 "$OPTARG";


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 194:
			s ) value_sanity_chk signature $OPTARG;
                                                       ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			s ) value_sanity_chk signature "$OPTARG";


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 195:
				array_put img$i 10 $OPTARG;
                                                   ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
				array_put img$i 10 "$OPTARG";


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 197:
			* ) echo "Invalid option passed to '$0' (options:$@)"
                                                                         ^-- SC2145: Argument mixes string and array. Use * or separate argument.


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 201:
	shift $(($OPTIND - 1))
                 ^-----^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 203:
		echo "Failed to parse all passed arguments (unrecognized: \"$@\")"
                                                                            ^-- SC2145: Argument mixes string and array. Use * or separate argument.


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 222:
	if ! echo $valid | grep -q "$2"; then
                  ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	if ! echo "$valid" | grep -q "$2"; then


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 287:
	emit_cksum ${checksum}
                   ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	emit_cksum "${checksum}"


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 317:
	emit_cksum ${checksum}
                   ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	emit_cksum "${checksum}"


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 344:
	emit_cksum ${checksum}
                   ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	emit_cksum "${checksum}"


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 355:
	csum_list=$@
                  ^-- SC2124: Assigning an array to a string! Assign as array, or use * instead of @ to concatenate.


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 363:
		count=`expr ${count} + 1`
                      ^-----------------^ SC2006: Use $(...) notation instead of legacy backticked `...`.
                       ^--^ SC2003: expr is antiquated. Consider rewriting this using $((..)), ${} or [[ ]].

Did you mean: 
		count=$(expr ${count} + 1)


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 392:
		if ! echo "$keys" | grep -q $key; then
                                            ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		if ! echo "$keys" | grep -q "$key"; then


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 427:
			count=`expr ${count} + 1`
                              ^-----------------^ SC2006: Use $(...) notation instead of legacy backticked `...`.
                               ^--^ SC2003: expr is antiquated. Consider rewriting this using $((..)), ${} or [[ ]].

Did you mean: 
			count=$(expr ${count} + 1)


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 439:
	if [ ! -z "${11}" ]; then
             ^-- SC2236: Use -n instead of ! -z.


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 486:
	echo "$@" | sed "s:^ ::g"
        ^-----------------------^ SC2001: See if you can use ${variable//search/replace} instead.


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 502:
		for a in ${img_array[@]}; do
                         ^-------------^ SC2068: Double quote array expansions to avoid re-splitting elements.


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 516:
			img_conf=$(remove_prefix_space $img_conf)
                                                       ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			img_conf=$(remove_prefix_space "$img_conf")


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 517:
			img_hash=$(remove_prefix_space $img_hash)
                                                       ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			img_hash=$(remove_prefix_space "$img_hash")


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 522:
			[ -n "${chk}" ] || eval DEF_$t=$img_count
                                                       ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			[ -n "${chk}" ] || eval DEF_$t="$img_count"


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 543:
				array_put conf$img_c 0 ${img_c}
                                              ^----^ SC2086: Double quote to prevent globbing and word splitting.
                                                       ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
				array_put conf"$img_c" 0 "${img_c}"


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 549:
				array_put conf$img_c $img_i $img_index
                                              ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
				array_put conf"$img_c" $img_i $img_index


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 550:
				array_put conf$img_c $(($img_i + 3)) ${img_sign}
                                              ^----^ SC2086: Double quote to prevent globbing and word splitting.
                                                        ^----^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                                     ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
				array_put conf"$img_c" $(($img_i + 3)) "${img_sign}"


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 551:
				array_put conf$img_c $(($img_i + 6)) ${img_key}
                                              ^----^ SC2086: Double quote to prevent globbing and word splitting.
                                                        ^----^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                                     ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
				array_put conf"$img_c" $(($img_i + 6)) "${img_key}"


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 552:
				array_put conf$img_c 10 $img_cname
                                              ^----^ SC2086: Double quote to prevent globbing and word splitting.
                                                        ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
				array_put conf"$img_c" 10 "$img_cname"


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 567:
	emit_its confstart $DEF_CONFIG
                           ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	emit_its confstart "$DEF_CONFIG"


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 568:
	for a in ${conf_array[@]}; do
                 ^--------------^ SC2068: Double quote array expansions to avoid re-splitting elements.


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 569:
		count=$(array_get $a 0)
                                  ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		count=$(array_get "$a" 0)


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 570:
		kernel=$(array_get $a 1)
                                   ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		kernel=$(array_get "$a" 1)


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 571:
		fdt=$(array_get $a 2)
                                ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		fdt=$(array_get "$a" 2)


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 572:
		ramdisk=$(array_get $a 3)
                                    ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		ramdisk=$(array_get "$a" 3)


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 573:
		er_file=$(array_get $a 4)
                                    ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		er_file=$(array_get "$a" 4)


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 574:
		fdt_file=$(array_get $a 5)
                                     ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		fdt_file=$(array_get "$a" 5)


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 575:
		rfs_file=$(array_get $a 6)
                                     ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		rfs_file=$(array_get "$a" 6)


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 576:
		ker_sign=$(array_get $a 7)
                                     ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		ker_sign=$(array_get "$a" 7)


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 577:
		fdt_sign=$(array_get $a 8)
                                     ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		fdt_sign=$(array_get "$a" 8)


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 578:
		rfs_sign=$(array_get $a 9)
                                     ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		rfs_sign=$(array_get "$a" 9)


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 579:
		cname=$(array_get $a 10)
                                  ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		cname=$(array_get "$a" 10)


In openwrt/target/linux/layerscape/image/mkits-multiple-config.sh line 595:
parse_args $@
           ^-- SC2068: Double quote array expansions to avoid re-splitting elements.

For more information:
  https://www.shellcheck.net/wiki/SC2068 -- Double quote array expansions to ...
  https://www.shellcheck.net/wiki/SC2145 -- Argument mixes string and array. ...
  https://www.shellcheck.net/wiki/SC1083 -- This { is literal. Check expressi...
