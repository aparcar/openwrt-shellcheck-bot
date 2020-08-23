
In openwrt/scripts/ubinize-image.sh line 3:
. $TOPDIR/scripts/functions.sh
  ^--------------------------^ SC1090: Can't follow non-constant source. Use a directive to specify location.
  ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
. "$TOPDIR"/scripts/functions.sh


In openwrt/scripts/ubinize-image.sh line 44:
		vol_id=$(( $vol_id + 1 ))
                           ^-----^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/scripts/ubinize-image.sh line 46:
		vol_id=$(( $vol_id + 1 ))
                           ^-----^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/scripts/ubinize-image.sh line 62:
		vol_id=$(( $vol_id + 1 ))
                           ^-----^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/scripts/ubinize-image.sh line 66:
		vol_id=$(( $vol_id + 1 ))
                           ^-----^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/scripts/ubinize-image.sh line 81:
	vol_id=$(( $vol_id + 1 ))
                   ^-----^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/scripts/ubinize-image.sh line 111:
		ubinize_param="$@"
                              ^--^ SC2124: Assigning an array to a string! Assign as array, or use * instead of @ to concatenate.


In openwrt/scripts/ubinize-image.sh line 129:
if [ ! -r "$rootfs" -o ! -r "$kernel" -a ! "$outfile" ]; then
                    ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.
                                      ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/scripts/ubinize-image.sh line 134:
ubinize="$( which ubinize )"
            ^---^ SC2230: which is non-standard. Use builtin 'command -v' instead.


In openwrt/scripts/ubinize-image.sh line 149:
ubinize $ubinize_seq -o "$outfile" $ubinize_param "$ubinizecfg"
        ^----------^ SC2086: Double quote to prevent globbing and word splitting.
                                   ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
ubinize "$ubinize_seq" -o "$outfile" "$ubinize_param" "$ubinizecfg"

For more information:
  https://www.shellcheck.net/wiki/SC1090 -- Can't follow non-constant source....
  https://www.shellcheck.net/wiki/SC2124 -- Assigning an array to a string! A...
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] && [ q ] as [ p -a q...
