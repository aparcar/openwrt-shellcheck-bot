
In openwrt/scripts/ubinize-image.sh line 3:
. $TOPDIR/scripts/functions.sh
  ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
. "$TOPDIR"/scripts/functions.sh


In openwrt/scripts/ubinize-image.sh line 165:
ubinize $ubinize_seq -o "$outfile" $ubinize_param "$ubinizecfg"
        ^----------^ SC2086: Double quote to prevent globbing and word splitting.
                                   ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
ubinize "$ubinize_seq" -o "$outfile" "$ubinize_param" "$ubinizecfg"

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
